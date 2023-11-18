from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import generics


def main(request):
    return HttpResponse('Hello')