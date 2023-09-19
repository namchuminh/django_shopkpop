from turtle import back
from django.db import models
from customer.models import KhachHang
from product.models import SanPham, MauSac

# Create your models here.
class DonHang(models.Model):
    TRANG_THAI = (
        ("cxl", 'Chưa Xử Lý'),
        ("dxl", 'Đã Xử Lý'),
        ("dcbh", 'Đang Chuẩn Bị Hàng'),
        ("dgh", 'Đang Giao Hàng'),
        ("dghh", 'Đã Giao Hàng'),
        ("khh", 'Khách Hàng Hủy'),
        ("adh", 'Admin Hủy'),
    )
    
    KhachHang = models.ForeignKey(KhachHang, on_delete=models.CASCADE)
    SoDienThoai = models.CharField(max_length=11)
    DiaChi = models.CharField(max_length=11)
    TongTien = models.IntegerField()
    GhiChu = models.CharField(max_length=150, blank=True, null=True)
    ThoiGian = models.DateTimeField(auto_now_add=True)
    TrangThai = models.CharField(max_length=25, choices=TRANG_THAI, default=TRANG_THAI[0][0])
    
    class Meta:
        verbose_name = "Đơn Hàng"
        verbose_name_plural = "Đơn Hàng"
        
    def __str__(self):
        return "Mã Đơn Hàng: " + str(self.id) + " - Khách Hàng: " + self.KhachHang.User.first_name + " " +  self.KhachHang.User.last_name + " - Tổng Tiền: " + str(self.TongTien) + " - Thời Gian: " + self.ThoiGian.strftime("%Y-%m-%d %H:%M:%S")
    
class ChiTietDonHang(models.Model):
    DonHang = models.ForeignKey(DonHang, on_delete=models.CASCADE)
    SanPham = models.ForeignKey(SanPham, on_delete=models.CASCADE)
    MauSac = models.ForeignKey(MauSac, on_delete=models.CASCADE, null=True, blank=True)
    GiaBan = models.IntegerField(null=True, blank=True)
    SoLuong = models.IntegerField(default=1)
    TongTien = models.IntegerField(null=True, blank=True)
    
    class Meta:
        verbose_name = "Chi Tiết Đơn Hàng"
        verbose_name_plural = "Chi Tiết Đơn Hàng"
    
    def save(self, *args, **kwargs):
        self.GiaBan = self.SanPham.GiaBan
        self.TongTien = self.SanPham.GiaBan * self.SoLuong
        super(ChiTietDonHang, self).save(*args, **kwargs)
    
    def __str__(self):
        return "Mã Đơn Hàng: " + str(self.DonHang.id) + " - Sản Phẩm: " + self.SanPham.TenSanPham + " - Giá Bán: " + str(self.GiaBan) +  " - Số Lượng: " + str(self.SoLuong) + " - Tổng Tiền: " + str(self.TongTien)