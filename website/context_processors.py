from product.models import ChuyenMuc
from .models import *

def category_context_processor(request):
    chuyenmuc_load = ChuyenMuc.objects.all()
    return {'chuyenmuc_load': chuyenmuc_load}

def nhataitro_context_processor(request):
    nhataitro_load = NhaTaiTro.objects.all()
    return {'nhataitro_load': nhataitro_load}

def thongtin_context_processor(request):
    thongtin_load = ThongTin.objects.all()
    return {'thongtin_load': thongtin_load}

