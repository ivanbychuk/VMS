from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import generics


def main(request):
    return HttpResponse('Hello! This is the VMS team. To manage the database you can go the admin panel - http://127.0.0.1:8000/admin/')