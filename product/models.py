from django.db import models

# Create your models here.
class SanPham(models.Model):
    TenSanPham = models.CharField(max_length=255)
    GiaKhuyenMai = models.DecimalField(max_digits=10, decimal_places=3)
    GiaBan = models.DecimalField(max_digits=10, decimal_places=3)
    MoTaNgan = models.TextField(max_length=255)
    MoTaDai = models.TextField()
    ChuyenMuc = models.ForeignKey('ChuyenMuc', on_delete=models.CASCADE, blank=False, null=False)
    MauSac = models.ManyToManyField('MauSac', related_name='SanPham', blank=True, null=True)
    The = models.CharField(max_length=255)
    AnhChinh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    AnhPhu1 = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    AnhPhu2 = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    AnhPhu3 = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    DuongDan = models.SlugField(blank=False, null=False)
    TrangThai = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.TenSanPham
    
    
class ChuyenMuc(models.Model):
    TenChuyenMuc = models.CharField(max_length=255)
    DuongDan = models.SlugField(blank=False, null=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.TenChuyenMuc
    
    
class MauSac(models.Model):
    TenMauSac = models.CharField(max_length=255)
    MaMauSac = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.TenMauSac