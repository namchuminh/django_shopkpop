from django.contrib import admin
from .models import DonHang, ChiTietDonHang

class ChiTietDonHangInline(admin.TabularInline):
    model = ChiTietDonHang

class DonHangAdmin(admin.ModelAdmin):
    inlines = [ChiTietDonHangInline]
    readonly_fields = ("id", "KhachHang", "SoDienThoai", "DiaChi", "TongTien", "GhiChu", "ThoiGian")

class ChiTietDonHangAdmin(admin.ModelAdmin):
    readonly_fields = ("id", "SanPham", "DonHang", "GiaBan", "SoLuong", "TongTien")
    
admin.site.register(DonHang, DonHangAdmin)
admin.site.register(ChiTietDonHang, ChiTietDonHangAdmin)
