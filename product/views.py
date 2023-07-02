from django.shortcuts import render, redirect
from django.views import View
from .models import * 
from order.models import *
from django.db.models import Count
# Create your views here.
template_error = '404error.html'

class Product(View):
    template_name = 'product/product.html'
    
    def get(self, request):
        sanpham = SanPham.objects.all()
        item_count = sanpham.count()
        items_per_page = 9 
        page_count = item_count // items_per_page + (1 if item_count % items_per_page > 0 else 0)
        
        top_products = ChiTietDonHang.objects.values('SanPham_id', 'SanPham__TenSanPham', 'SanPham__GiaBan', 'SanPham__GiaKhuyenMai', 'SanPham__PhanTramGiam', 'SanPham__AnhChinh', 'SanPham__DuongDan') \
        .annotate(count=Count('SanPham_id')) \
        .order_by('-count')[:5]
        
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
                    chuyenmuc = ChuyenMuc.objects.all().filter()
                    if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                        sanpham = SanPham.objects.all().filter().order_by('-GiaBan')[int(start_index):int(end_index)]
                    if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                        sanpham = SanPham.objects.all().filter().order_by('GiaBan')[int(start_index):int(end_index)]
                    if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                        sanpham = SanPham.objects.all().filter().order_by('-id')[int(start_index):int(end_index)]
                    number_page = [i for i in range(1, page_count + 1)]
                    data = {"top_products": top_products, "sanpham": sanpham, "chuyenmuc": chuyenmuc, 'page_count': number_page, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!", "page": page, "pre_page": pre_page, "next_page": next_page, "len_page_count": len(number_page)}
                    return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        elif request.GET.get('s') is not None:
            try:
                tensanpham = request.GET.get('s')
                sanpham = SanPham.objects.all().filter(TenSanPham__icontains=tensanpham)
                chuyenmuc = ChuyenMuc.objects.all().filter()
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                    sanpham = SanPham.objects.all().filter(TenSanPham__icontains=tensanpham).order_by('-GiaBan')
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                    sanpham = SanPham.objects.all().filter(TenSanPham__icontains=tensanpham).order_by('GiaBan')
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                    sanpham = SanPham.objects.all().filter(TenSanPham__icontains=tensanpham).order_by('-id')
                data = {"top_products": top_products, "sanpham": sanpham, "chuyenmuc": chuyenmuc, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!"}
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        elif (request.GET.get('min') is not None) and (request.GET.get('max') is not None):
            try:
                min = int(request.GET.get('min'))
                max = int(request.GET.get('max'))
                sanpham = SanPham.objects.all().filter(GiaBan__range=(min, max))
                chuyenmuc = ChuyenMuc.objects.all().filter()
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                    sanpham = SanPham.objects.all().filter(GiaBan__range=(min, max)).order_by('-GiaBan')
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                    sanpham = SanPham.objects.all().filter(GiaBan__range=(min, max)).order_by('GiaBan')
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                    sanpham = SanPham.objects.all().filter(GiaBan__range=(min, max)).order_by('-id')
                data = {"top_products": top_products, "sanpham": sanpham, "chuyenmuc": chuyenmuc, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!"}
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        elif request.GET.get('mau') is not None:
            try:
                mau = str(request.GET.get('mau')).capitalize()
                mausac = MauSac.objects.all().get(TenMauSac=mau)
                sanpham = SanPham.objects.all().filter(MauSac=mausac)
                chuyenmuc = ChuyenMuc.objects.all().filter()
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                    sanpham = SanPham.objects.all().filter(MauSac=mausac).order_by('-GiaBan')
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                    sanpham = SanPham.objects.all().filter(MauSac=mausac).order_by('GiaBan')
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                    sanpham = SanPham.objects.all().filter(MauSac=mausac).order_by('-id')
                data = {"top_products": top_products, "sanpham": sanpham, "chuyenmuc": chuyenmuc, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!"}
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        else:
            try:
                sanpham = SanPham.objects.all().filter()[:9]
                chuyenmuc = ChuyenMuc.objects.all().filter()
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "giam":
                    sanpham = SanPham.objects.all().filter().order_by('-GiaBan')[:9]
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "tang":
                    sanpham = SanPham.objects.all().filter().order_by('GiaBan')[:9]
                if (request.GET.get('sap_xep') is not None) and request.GET.get('sap_xep').lower() == "moi":
                    sanpham = SanPham.objects.all().filter().order_by('-id')[:9]
                number_page = [i for i in range(1, page_count + 1)]
                data = {"top_products": top_products, "sanpham": sanpham, "chuyenmuc": chuyenmuc, 'page_count': number_page, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!", "page": 1, "len_page_count": len(number_page)}
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)

class DetailProduct(View):
    template_name = 'product/detail.html'

    def get(self, request, slug):
        if slug is None:
            return redirect('product')
        
        try:
            sanpham = SanPham.objects.all().get(DuongDan=slug)
            sanphamlienquan = SanPham.objects.all().filter(ChuyenMuc=sanpham.ChuyenMuc).order_by('?')[:4]
            data = {"sanpham": sanpham, "title": "Sản Phẩm " + sanpham.TenSanPham, "sanphamlienquan": sanphamlienquan}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
