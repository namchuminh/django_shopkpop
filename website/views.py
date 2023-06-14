from django.shortcuts import render, HttpResponse
from django.views import View
from product.models import SanPham
from .models import *
# Create your views here.

class Home(View):
    template_name = 'website/home.html'
    def get(self, request):
        sanpham = SanPham.objects.all().filter(TrangThai=True).order_by('-id')[:9]
        slide = Slide.objects.all().filter(HienThi=True).order_by('-id')
        bannertop = BannerTop.objects.all().filter(HienThi=True).order_by('-id')[:3]
        bannermid = BannerMid.objects.all().filter(HienThi=True).order_by('-id')[:2]
        bannerbottom = BannerBottom.objects.all().filter(HienThi=True).order_by('-id')[:1]
        data = {"sanpham": sanpham, "slide": slide, "bannertop": bannertop, "bannermid": bannermid, "bannerbottom": bannerbottom}
        return render(request, self.template_name, data)
    