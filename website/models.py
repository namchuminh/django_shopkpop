from email.policy import default
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
    
    def __str__(self):
        return "Banner Chuyên Mục: " + self.ChuyenMuc.TenChuyenMuc

class BannerMid(models.Model):
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    ChuyenMuc = models.ForeignKey(ChuyenMuc, on_delete=models.CASCADE)
    HienThi = models.BooleanField(default=True)
    
    def __str__(self):
        return "Banner Chuyên Mục: " + self.ChuyenMuc.TenChuyenMuc
    
class BannerBottom(models.Model):
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    ChuyenMuc = models.ForeignKey(ChuyenMuc, on_delete=models.CASCADE)
    HienThi = models.BooleanField(default=True)
    
    def __str__(self):
        return "Banner Chuyên Mục: " + self.ChuyenMuc.TenChuyenMuc
    
class NhaTaiTro(models.Model):
    TenNhaTaiTro = models.CharField(max_length=255)
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True, default="uploads/1.png")
    
    class Meta:
        verbose_name = "Nhà Tài Trợ"
        verbose_name_plural = "Nhà Tài Trợ"
    
    def __str__(self):
        return self.TenNhaTaiTro
    
class LoaiThongTin(models.Model):
    MaLoai = models.CharField(max_length=255, null=True, blank=True)
    TenLoai = models.CharField(max_length=255)
    
    def __str__(self):
        return self.TenLoai
    
class ThongTin(models.Model):
    LoaiThongTin = models.OneToOneField('LoaiThongTin', on_delete=models.CASCADE, unique=True)
    GiaTri = models.CharField(max_length=255, blank=True, null=True)
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    
    class Meta:
        verbose_name = "Cấu Hình"
        verbose_name_plural = "Cấu Hình"
        
    def __str__(self):
        return self.LoaiThongTin.TenLoai


    