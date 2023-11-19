from django.contrib import admin
from django.urls import path, include
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('api.urls')),
]
admin.site.site_title = "VMS admin panel"
admin.site.site_header = "VMS admin panel" 