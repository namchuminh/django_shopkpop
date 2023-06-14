from django.shortcuts import render, redirect
from django.views import View
from .models import * 
# Create your views here.

class DetailProduct(View):
    template_name = 'product/detail.html'
    template_error = '404error.html'
    def get(self, request, slug):
        if slug is None:
            return redirect('product')
        
        try:
            sanpham = SanPham.objects.all().get(DuongDan=slug)
            data = {"sanpham": sanpham}
            return render(request, self.template_name, data)
        except:
            return render(request, self.template_error)
        
        