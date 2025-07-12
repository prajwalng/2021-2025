from django.shortcuts import render
from django.http import HttpResponse
from.models import Book, Author
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
  

    def generate_pdf(request, model_name):
