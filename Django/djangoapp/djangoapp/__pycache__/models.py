from django.db import models

class Book(models.Model):
    title = models.CharField(max_length=200)
    author = models.CharField(max_length=100)
    publication_date = models.DateField()

class Author(models.Model):
    name = models.CharField(max_length=100)
    bio = models.TextField()