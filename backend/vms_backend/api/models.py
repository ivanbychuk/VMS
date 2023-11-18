from django.db import models
from django.utils import timezone
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin, BaseUserManager


class DriverManager(BaseUserManager):

    def create_superuser(self, email, user_name, first_name, password, **other_fields):

        other_fields.setdefault('is_staff', True)
        other_fields.setdefault('is_superuser', True)
        other_fields.setdefault('is_active', True)

        if other_fields.get('is_staff') is not True:
            raise ValueError(
                'Superuser must be assigned to is_staff=True.')
        if other_fields.get('is_superuser') is not True:
            raise ValueError(
                'Superuser must be assigned to is_superuser=True.')

        return self.create_user(email, user_name, first_name, password, **other_fields)

    def create_user(self, email, user_name, first_name, password, **other_fields):

        if not email:
            raise ValueError(_('You must provide an email address'))

        email = self.normalize_email(email)
        user = self.model(email=email, user_name=user_name,
                          first_name=first_name, **other_fields)
        user.set_password(password)
        user.save()
        return user


class Driver(AbstractBaseUser, PermissionsMixin):

    email = models.EmailField(_('email address'), unique=True)
    user_name = models.CharField(max_length=150, unique=True)
    first_name = models.CharField(max_length=150, blank=True)
    start_date = models.DateTimeField(default=timezone.now)
    about = models.TextField(_(
        'about'), max_length=500, blank=True)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=False)

    objects = DriverManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['user_name', 'first_name']

    def __str__(self):
        return self.user_name
    
    class Meta:
        verbose_name = "Driver"
        verbose_name_plural = "Drivers"

    

class Vehicle(models.Model):
    license_plate = models.CharField(max_length=150, unique=True)
    year = models.DateTimeField(default=timezone.now)
    model = models.CharField(max_length=150)
    color = models.CharField(max_length=150)

    driver = models.ForeignKey(Driver, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.license_plate)
    
    class Meta:
        verbose_name = "Vehicle"
        verbose_name_plural = "Vehicles"


class Task(models.Model):
    title = models.CharField(max_length=150)
    start_time = models.DateTimeField(default=timezone.now)
    is_finished = models.BooleanField(default=False)

    driver = models.OneToOneField(Driver, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.title)
    
    class Meta:
        verbose_name = "Task"
        verbose_name_plural = "Tasks"