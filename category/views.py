from django.shortcuts import render, redirect
from django.views import View
from product.models import *
# Create your views here.

template_error = '404error.html'

class Category(View):
    template_name = 'category/list.html'
    
    def get(self, request):
        try:
            chuyenmuc = ChuyenMuc.objects.all()
            data = {"chuyenmuc": chuyenmuc, "title": "Chuyên Mục Sản Phẩm"}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)

class DetailCategory(View):
    template_name = 'category/product.html'
    
    def get(self, request, slug):
        
        if slug is None:
            return redirect('category')
        
        chuyenmuc = ChuyenMuc.objects.all().get(DuongDan=slug)
        sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc)
        
        item_count = sanpham.count()
        items_per_page = 12
        page_count = item_count // items_per_page + (1 if item_count % items_per_page > 0 else 0)
        
        if(request.GET.get('trang') is not None):
            try:
                page = int(request.GET.get('trang'))
                start_index = (page - 1) * items_per_page
                end_index = start_index + items_per_page
                if page > page_count or page <= 0:
                    return render(request, template_error)
                else:
                    pre_page = 1 if(page == 1) else page - 1
                    next_page = page_count if(page == page_count) else page + 1
                    sanpham = sanpham[int(start_index):int(end_index)]
                    print(sanpham)
                    if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                        sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc).order_by('-GiaBan')[int(start_index):int(end_index)]
                    if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                        sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc).order_by('GiaBan')[int(start_index):int(end_index)]
                    if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                        sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc).order_by('-id')[int(start_index):int(end_index)]
                    number_page = [i for i in range(1, page_count + 1)]
                    data = {
                        "sanpham": sanpham, 
                        "chuyenmuc": chuyenmuc, 
                        'page_count': number_page, 
                        "title": "Chuyên Mục " + chuyenmuc.TenChuyenMuc, 
                        "tenchuyenmuc": chuyenmuc.TenChuyenMuc, 
                        "page": page, 
                        "pre_page": pre_page, 
                        "next_page": next_page, 
                        "slug": slug, 
                        "len_page_count": len(number_page)
                    }
                    return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        else:
            try:
                sanpham = sanpham[0:12]
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                    sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc).order_by('-GiaBan')[0:12]
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                    sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc).order_by('GiaBan')[0:12]
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                    sanpham = SanPham.objects.all().filter(ChuyenMuc=chuyenmuc).order_by('-id')[0:12]
                number_page = [i for i in range(1, page_count + 1)]
                data = {
                    "sanpham": sanpham, 
                    "chuyenmuc": chuyenmuc, 
                    'page_count': number_page, 
                    "title": "Chuyên Mục " + chuyenmuc.TenChuyenMuc, 
                    "tenchuyenmuc": chuyenmuc.TenChuyenMuc, 
                    "page": 1,  
                    "slug": slug, 
                    "len_page_count": len(number_page)
                }
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)


