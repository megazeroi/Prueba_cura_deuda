from django.shortcuts import render
from django.http import HttpResponse
from .models import *
# Create your views here.
def index(request):
    return render(request = request,
                  template_name = "htmldocs/main.html",
                  context = {})
