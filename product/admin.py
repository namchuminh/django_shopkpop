from django.contrib import admin
from .models import *
from django.utils.html import format_html
from django.conf import settings


class MauSacAdmin(admin.ModelAdmin):
    readonly_fields = ("id", "TenMauSac", "MaMauSac")

@admin.register(SanPham)
class SanPhamAdmin(admin.ModelAdmin):
    list_display = ('id', 'get_hinhanh','get_tensanpham', 'get_motangan', 'get_chuyenmuc', 'get_giaban', 'gia_khuyenmai', 'get_trangthai')
    list_per_page = 10
    search_fields = ('SanPham__TenSanPham', 'SanPham__MoTaNgan')
    list_filter = ('ChuyenMuc__TenChuyenMuc', 'TrangThai', 'PhanTramGiam', 'MauSac__TenMauSac')
    readonly_fields = ('display_hinh_anh',)  # Trường chỉ đọc để hiển thị hình ảnh

    def get_hinhanh(self, obj):
        return format_html('<img src="{}" width="100" height="100" />', obj.AnhChinh.url) 

    def get_tensanpham(self, obj):
        return obj.TenSanPham

    def get_motangan(self, obj):
        return obj.MoTaNgan
    
    def get_chuyenmuc(self, obj):
        return obj.ChuyenMuc.TenChuyenMuc
    
    def get_giaban(self, obj):
        return obj.GiaBan
    
    def gia_khuyenmai(self, obj):
        return obj.GiaKhuyenMai
    
    def get_trangthai(self, obj):
        return "Còn Hàng" if obj.TrangThai == True else 'Hết Hàng'

    
    def display_hinh_anh(self, obj):
        image_url = f"{settings.MEDIA_URL}{obj.AnhChinh}" if obj.AnhChinh else ''
        return format_html('<img src="{}" width="100%" height="100%" />', image_url)

    get_tensanpham.short_description = 'Tên Sản Phẩm'
    get_motangan.short_description = 'Tô Tả Ngắn'
    get_chuyenmuc.short_description = 'Chuyên Mục'
    get_giaban.short_description = 'Giá Bán'
    gia_khuyenmai.short_description = 'Giá Khuyến Mãi'
    get_trangthai.short_description= 'Trạng Thái'
    get_hinhanh.short_description= 'Hình Ảnh'

@admin.register(MauSac)
class MauSacAdmin(admin.ModelAdmin):
    readonly_fields = ("id", "TenMauSac", "MaMauSac")

@admin.register(ChuyenMuc)
class ChuyenMucAdmin(admin.ModelAdmin):
    list_display = ('id', 'get_ten_chuyen_muc', 'get_duong_dan')
    list_per_page = 10
    readonly_fields = ('display_hinh_anh',)  # Trường chỉ đọc để hiển thị hình ảnh

    def get_ten_chuyen_muc(self, obj):
        return obj.TenChuyenMuc

    def get_duong_dan(self, obj):
        return obj.DuongDan
    
    def display_hinh_anh(self, obj):
        image_url = f"{settings.MEDIA_URL}{obj.HinhAnh}" if obj.HinhAnh else ''
        return format_html('<img src="{}" width="100%" height="100%" />', image_url)

    get_ten_chuyen_muc.short_description = 'Tên Chuyên Mục'
    get_duong_dan.short_description = 'Đường Dẫn'
    display_hinh_anh.short_description = 'Hình Ảnh'
