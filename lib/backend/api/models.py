from django.db import models

# Create your models here.
class Product(models.Model):
    id = models.BigAutoField(primary_key = True)
    name = models.CharField(max_length=50)
    description = models.TextField()

    def strRepresent(self):
        return self.name
