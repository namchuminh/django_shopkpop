from xml.parsers.expat import model
from django.db import models
from product.models import ChuyenMuc

# Create your models here.
class Slide(models.Model):
    TieuDe = models.CharField(max_length=255)
    MoTaNgan = models.CharField(max_length=255)
    MoTaDai = models.CharField(max_length=255)
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    ChuyenMuc = models.ForeignKey(ChuyenMuc, on_delete=models.CASCADE)
    HienThi = models.BooleanField(default=True)
    def __str__(self):
        return self.TieuDe
    
class BannerTop(models.Model):
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    ChuyenMuc = models.ForeignKey(ChuyenMuc, on_delete=models.CASCADE)
    HienThi = models.BooleanField(default=True)

class BannerMid(models.Model):
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    ChuyenMuc = models.ForeignKey(ChuyenMuc, on_delete=models.CASCADE)
    HienThi = models.BooleanField(default=True)
    
class BannerBottom(models.Model):
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    ChuyenMuc = models.ForeignKey(ChuyenMuc, on_delete=models.CASCADE)
    HienThi = models.BooleanField(default=True)