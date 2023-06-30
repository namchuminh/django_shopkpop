from django.shortcuts import render, redirect, HttpResponse
from django.http import JsonResponse
from django.views import View
from django.contrib.auth.models import User
from customer.models import KhachHang
from .models import *
from website.models import *
# Create your views here.

template_error = '404error.html'


class CartList(View):
    
    template_name = 'cart/list.html'

    def get(self, request):
        try:
            user = User.objects.all().get(id=request.user.id)
            khachhang = KhachHang.objects.all().get(User=user)
            giohang = GioHang.objects.all().filter(KhachHang=khachhang)
            
            total_price = 0
        
            for item in giohang:
                total_price += item.SoLuong * item.GiaBan
            
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phiship")
            phiship = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phivat")
            phivat = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
            
            thanhtoan = int(total_price + int(phiship)) 
            thanhtoan = thanhtoan + int(thanhtoan * int(phivat) / 100)
            print(thanhtoan)
            
            data = {"title": "Giỏ hàng", "giohang": giohang, "thanhtoan": thanhtoan, "phiship": phiship, "phivat": phivat, "total_price": total_price}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)

def AddProductToCart(request):
    
    if not request.user.is_authenticated:
        return JsonResponse({"error": "Vui Lòng Đăng Nhập Để Thêm Sản Phẩm Vào Giỏ Hàng!"})
    
    if request.method == "POST":
        try:
            masanpham = int(request.POST['masanpham'])
            mamausac = request.POST['mausac']
            soluong = request.POST['soluong']
            sanpham = SanPham.objects.all().get(id=masanpham)
            mausac = MauSac.objects.all().get(id=mamausac)
            user = User.objects.all().get(id=request.user.id)
            khachhang = KhachHang.objects.all().get(User=user)
            
            if int(soluong) <= 0 or soluong == "":
                return JsonResponse({"error": "Số Lượng Sản Phẩm Phải Lớn Hơn 0!"})
            
            if int(mamausac) == 0 or mamausac == "":
                return JsonResponse({"error": "Vui Lòng Chọn Màu Sắc!"})
            
            
            count_giohang = GioHang.objects.all().filter(KhachHang=khachhang, SanPham=sanpham).count()
            
            if count_giohang == 1:
                return JsonResponse({"error": "Sản Phẩm Đã Có Trong Giỏ Hàng!"})
            elif count_giohang == 0:
                cart = GioHang(KhachHang=khachhang, SanPham=sanpham, SoLuong=soluong, MauSac=mausac)
                cart.save()
                return JsonResponse({"success": "Thêm Sản Phẩm Vào Giỏ Hàng Thành Công!"})
        except:
            return JsonResponse({"error": "Có Lỗi Khi Thêm Sản Phẩm Vào Giỏ Hàng!"})

    elif request.method == "GET":
        try:
            masanpham = int(request.GET.get('masanpham'))
            sanpham = SanPham.objects.all().get(id=masanpham)
            user = User.objects.all().get(id=request.user.id)
            khachhang = KhachHang.objects.all().get(User=user)
            
            count_giohang = GioHang.objects.all().filter(KhachHang=khachhang, SanPham=sanpham).count()
            
            if count_giohang == 1:
                return JsonResponse({"error": "Sản Phẩm Đã Có Trong Giỏ Hàng!"})
            elif count_giohang == 0:
                cart = GioHang(KhachHang=khachhang, SanPham=sanpham)
                cart.save()
                return JsonResponse({"success": "Thêm Sản Phẩm Vào Giỏ Hàng Thành Công!"})
        except:
            return JsonResponse({"error": "Có Lỗi Khi Thêm Sản Phẩm Vào Giỏ Hàng!"})
        