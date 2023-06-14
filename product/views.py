from django.shortcuts import render, redirect
from django.views import View
from .models import * 
# Create your views here.
template_error = '404error.html'

class Product(View):
    template_name = 'product/product.html'
    
    def get(self, request):
        item_count = SanPham.objects.count()
        items_per_page = 9 
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
                    sanpham = SanPham.objects.all()[int(start_index):int(end_index)]
                    chuyenmuc = ChuyenMuc.objects.all().filter()
                    number_page = [i for i in range(1, page_count + 1)]
                    data = {"sanpham": sanpham, "chuyenmuc": chuyenmuc, 'page_count': number_page, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!", "page": page, "pre_page": pre_page, "next_page": next_page}
                    return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        else:
            try:
                sanpham = SanPham.objects.all().filter()[:9]
                chuyenmuc = ChuyenMuc.objects.all().filter()
                number_page = [i for i in range(1, page_count + 1)]
                data = {"sanpham": sanpham, "chuyenmuc": chuyenmuc, 'page_count': number_page, "title": "Sản Phẩm KPOP Chất Lượng, Giá Rẻ!", "page": page}
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
            data = {"sanpham": sanpham, "title": "Sản Phẩm " + sanpham.TenSanPham}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
        
        