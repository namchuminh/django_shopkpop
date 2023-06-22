from django.db import models
# Create your models here.

class LienHe(models.Model):
    TenKhachHang = models.CharField(max_length=255, null=False, blank=False)
    Email = models.CharField(max_length=255, null=False, blank=False)
    SoDienThoai = models.CharField(max_length=11, null=False, blank=False)
    TieuDe = models.CharField(max_length=500)
    NoiDung = models.TextField()
    
    class Meta:
        verbose_name = "Liên Hệ"
        verbose_name_plural = "Liên Hệ"
        
    def __str__(self):
        return self.TenKhachHang + " - " + self.TieuDe

    

    