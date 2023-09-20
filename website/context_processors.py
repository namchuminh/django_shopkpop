from customer.models import KhachHang
from product.models import ChuyenMuc
from .models import *
from cart.models import GioHang
from django.contrib.auth.models import User

def category_context_processor(request):
    chuyenmuc_load = ChuyenMuc.objects.all()
    return {'chuyenmuc_load': chuyenmuc_load}

def nhataitro_context_processor(request):
    nhataitro_load = NhaTaiTro.objects.all()
    return {'nhataitro_load': nhataitro_load}

def thongtin_context_processor(request):
    thongtin_load = ThongTin.objects.all()
    return {'thongtin_load': thongtin_load}

def giohang_context_processor(request):
    if request.user.is_authenticated and request.user.is_superuser == False:
        user = User.objects.all().get(id=request.user.id)
        khachhang = KhachHang.objects.all().get(User=user)
        giohang_load = GioHang.objects.all().filter(KhachHang=khachhang)
        
        total_price = 0
        count_product = 0
        
        for item in giohang_load:
            total_price += item.SoLuong * item.GiaBan
            count_product = count_product + 1
        
        return {'giohang_load': giohang_load, "total_price": total_price, "count_product": count_product}
    else:
        return {'giohang_load': None}

def base_url(request):
    scheme = 'https' if request.is_secure() else 'http'
    host = request.META['HTTP_HOST']
    base_url = f"{scheme}://{host}"
    return {'base_url': base_url}
