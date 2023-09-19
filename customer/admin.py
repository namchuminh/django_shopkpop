from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import KhachHang

@admin.register(KhachHang)
class KhachHangAdmin(admin.ModelAdmin):
    list_display = ('id', 'get_username', 'get_first_name', 'get_last_name', 'get_so_dien_thoai', 'get_dia_chi', 'get_gioi_tinh')
    search_fields = ('User__first_name', 'User__last_name', 'SoDienThoai')
    list_filter = ('GioiTinh', 'SoDienThoai', 'DiaChi')
    list_per_page = 10

    def get_username(self, obj):
        return obj.User.username

    def get_first_name(self, obj):
        return obj.User.first_name
    
    def get_last_name(self, obj):
        return obj.User.last_name
    
    def get_so_dien_thoai(self, obj):
        return obj.SoDienThoai

    def get_dia_chi(self, obj):
        return obj.DiaChi

    def get_gioi_tinh(self, obj):
        return obj.GioiTinh
    
    get_username.short_description = 'Tài khoản'
    get_first_name.short_description = 'Họ đệm'
    get_last_name.short_description = 'Tên'
    get_so_dien_thoai.short_description = 'Số Điện Thoại'
    get_dia_chi.short_description = 'Địa Chỉ'
    get_gioi_tinh.short_description = 'Giới Tính'

