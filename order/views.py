from contextlib import redirect_stderr
from django.shortcuts import render, redirect
from django.views import View
from django.contrib.auth.models import User
from customer.models import KhachHang
from .models import *
from cart.models import *
from website.models import *
import re
# Create your views here.

template_error = '404error.html'

class PayCart(View):
    template_name = 'order/pay.html'
    
    def get(self, request):
        try:
            user = User.objects.all().get(id=request.user.id)
            khachhang = KhachHang.objects.all().get(User=user)
            giohang = GioHang.objects.all().filter(KhachHang=khachhang, MauSac=None)
            
            if giohang.count() >= 1:
                return redirect('cart_list')
            
            giohang = GioHang.objects.all().filter(KhachHang=khachhang, SoLuong=0)
            
            if giohang.count() >= 1:
                return redirect('cart_list')
            
            
            giohang = GioHang.objects.all().filter(KhachHang=khachhang)
            
            total_price = 0
    
            for item in giohang:
                total_price += item.SoLuong * item.GiaBan
                item.GiaTien = item.GiaBan * item.SoLuong
                
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phiship")
            phiship = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phivat")
            phivat = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            thanhtoan = int(total_price + int(phiship)) 
            thanhtoan = thanhtoan + int(thanhtoan * int(phivat) / 100)
            
            data = {"title": "Thanh Toán", "khachhang": khachhang, "phiship": phiship, "phivat": phivat, "thanhtoan": thanhtoan, "giohang": giohang}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
    
    def post(self, request):
        try:
            phone = request.POST['sodienthoai']
            address = request.POST['diachi']
            note = request.POST['ghichu']
            user = User.objects.all().get(id=request.user.id)
            khachhang = KhachHang.objects.all().get(User=user)
            giohang = GioHang.objects.all().filter(KhachHang=khachhang)
            
            total_price = 0
    
            for item in giohang:
                total_price += item.SoLuong * item.GiaBan
                item.GiaTien = item.GiaBan * item.SoLuong
                
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phiship")
            phiship = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phivat")
            phivat = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            thanhtoan = int(total_price + int(phiship)) 
            thanhtoan = thanhtoan + int(thanhtoan * int(phivat) / 100)
            
            phone_regex = re.compile(r'^(03|05|07|08|09)\d{8}$')
            if(bool(phone_regex.match(phone)) == False):
                data = {"title": "Thanh Toán", "khachhang": khachhang, "phiship": phiship, "phivat": phivat, "thanhtoan": thanhtoan, "giohang": giohang, "errorMessage": "Vui Lòng Nhập Số Điện Thoại Hợp Lệ!"}
                return render(request, self.template_name, data)
            
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phiship")
            phiship = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phivat")
            phivat = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            thanhtoan = int(total_price + int(phiship)) 
            thanhtoan = thanhtoan + int(thanhtoan * int(phivat) / 100)
            
            donhang = DonHang.objects.create(KhachHang=khachhang, SoDienThoai=phone, DiaChi=address, GhiChu=note, TongTien=thanhtoan, TrangThai="cxl")
            donhang.save()
            
            donhangthanhtoan = DonHang.objects.all().get(id=donhang.id)
            
            for item in giohang:
                chitietdonhang = ChiTietDonHang.objects.create(DonHang=donhangthanhtoan, SanPham=item.SanPham, SoLuong=item.SoLuong, MauSac=item.MauSac)
                chitietdonhang.save()
            
            giohang.delete()
            return redirect('customer')
        except:
            return render(request, template_error)