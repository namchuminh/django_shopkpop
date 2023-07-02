from django.shortcuts import render, HttpResponse
from django.views import View
from product.models import SanPham
from .models import *
from news.models import *
from django.db.models import Count
from order.models import *
# Create your views here.

class Home(View):
    template_name = 'website/home.html'
    def get(self, request):
        sanpham = SanPham.objects.all().filter(TrangThai=True).order_by('-id')[:12]
        slide = Slide.objects.all().filter(HienThi=True).order_by('-id')
        bannertop = BannerTop.objects.all().filter(HienThi=True).order_by('-id')[:3]
        bannermid = BannerMid.objects.all().filter(HienThi=True).order_by('-id')[:2]
        bannerbottom = BannerBottom.objects.all().filter(HienThi=True).order_by('-id')[:1]
        tintuc = TinTuc.objects.all().order_by('-id')[:10]
        top_products = ChiTietDonHang.objects.values('SanPham_id', 'SanPham__TenSanPham', 'SanPham__GiaBan', 'SanPham__GiaKhuyenMai', 'SanPham__PhanTramGiam', 'SanPham__AnhChinh', 'SanPham__DuongDan') \
        .annotate(count=Count('SanPham_id')) \
        .order_by('-count')[:8]
        data = {"top_products": top_products, "sanpham": sanpham, "slide": slide, "bannertop": bannertop, "bannermid": bannermid, "bannerbottom": bannerbottom, "tintuc": tintuc, "title": "Cửa Hàng KPOP Chất Lượng, Giá Rẻ!"}
        return render(request, self.template_name, data)
    