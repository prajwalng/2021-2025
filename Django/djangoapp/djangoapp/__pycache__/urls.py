from django.urls import path
from. import views

urlpatterns = [
    path('generate_csv/<str:model_name>/', views.generate_csv, name='generate_csv'),
    path('generate_pdf/<str:model_name>/', views.generate_pdf, name='generate_pdf'),
]