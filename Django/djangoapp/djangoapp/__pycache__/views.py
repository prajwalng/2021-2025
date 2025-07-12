from django.shortcuts import render
from django.http import HttpResponse
from .models import Book, Author
import csv
from django.template.loader import get_template
from django.template import Context
from io import BytesIO
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4

def generate(request):
    if request.method == 'GET':
        return render(request, 'generate.html')
    elif request.method == 'POST':
        model_name = request.POST.get('model_name')
        return render(request, 'generate.html', {'model_name': model_name})

def generate_csv(request, model_name):
    model = globals()[model_name]
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="{}.csv"'.format(model_name)
    writer = csv.writer(response)
    writer.writerow([field.name for field in model._meta.get_fields()])
    for obj in model.objects.all():
        writer.writerow([getattr(obj, field.name) for field in model._meta.get_fields()])
    return response

def generate_pdf(request, model_name):
    model = globals()[model_name]
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="{}.pdf"'.format(model_name)
    buffer = BytesIO()
    p = canvas.Canvas(buffer, pagesize=A4)
    p.setFont("Helvetica", 12)
    p.drawString(100, 750, "Generated PDF for {}".format(model_name))
    p.drawString(100, 725, "----------------------------------------")
    for obj in model.objects.all():
        for field in model._meta.get_fields():
            p.drawString(100, 700 - (obj.id * 25), "{}: {}".format(field.name, getattr(obj, field.name)))
    p.showPage()
    p.save()
    pdf = buffer.getvalue()
    buffer.close()
    return HttpResponse(pdf, content_type='application/pdf')