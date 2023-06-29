from django.db import models
from customer.models import KhachHang
from product.models import MauSac, SanPham
# Create your models here.  

class GioHang(models.Model):
    KhachHang = models.ForeignKey(KhachHang, on_delete=models.CASCADE)
    SanPham = models.ForeignKey(SanPham, on_delete=models.CASCADE, null=True, blank=True)
    TenSanPham = models.CharField(max_length=255, null=True, blank=True)
    MoTaNgan = models.TextField(max_length=255, null=True, blank=True)
    GiaBan = models.IntegerField(null=True, blank=True)
    SoLuong = models.IntegerField(default=1)
    MauSac = models.ForeignKey(MauSac, on_delete=models.CASCADE, null=True, blank=True)
    
    class Meta:
        verbose_name = "Giỏ Hàng"
        verbose_name_plural = "Giỏ Hàng"
    
    def save(self, *args, **kwargs):
        self.TenSanPham = self.SanPham.TenSanPham
        self.MoTaNgan = self.SanPham.MoTaNgan
        self.GiaBan = self.SanPham.GiaBan
        super(GioHang, self).save(*args, **kwargs)
    
        
    def __str__(self):
        return "MKH: " + str(self.KhachHang.User.id) + " - Tên Sản Phẩm: " + self.SanPham.TenSanPham
    