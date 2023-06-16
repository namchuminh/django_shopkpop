from django.shortcuts import render
from django.views import View
from .models import *
from product.models import *
from website.models import *
import random

# Create your views here.

template_error = '404error.html'


class ListNews(View):
    template_name = 'news/list.html'
    
    def get(self, request):
        chuyenmuc = ChuyenMuc.objects.all()
        tintucmoi = TinTuc.objects.order_by('-created_at')[:10]
        tintucmoi = random.sample(list(tintucmoi), 5)
        banner = BannerMid.objects.all().order_by("?")[:1]
        
        tintuc = TinTuc.objects.all().filter().order_by('-id')
        item_count = tintuc.count()
        items_per_page = 8
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
                    tintuc = tintuc[int(start_index):int(end_index)]
                    number_page = [i for i in range(1, page_count + 1)]
                    data = {
                        "tintuc": tintuc,
                        "tintucmoi": tintucmoi,
                        "chuyenmuc": chuyenmuc, 
                        "banner": banner,
                        'page_count': number_page, 
                        "title": "Tin Tức Sao Kpop", 
                        "page": page, 
                        "pre_page": pre_page, 
                        "next_page": next_page, 
                        "len_page_count": len(number_page)
                    }
                    return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        elif (request.GET.get('s') is not None):
            try:
                tieude = request.GET.get('s')
                tintuc = TinTuc.objects.all().filter(TieuDe__icontains=tieude).order_by('-id')
                data = {
                    "tintuc": tintuc,
                    "tintucmoi": tintucmoi, 
                    "chuyenmuc": chuyenmuc, 
                    "banner": banner,
                    "title": "Tin Tức Sao Kpop", 
                }
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        else:
            try:
                tintuc = tintuc[0:8]
                number_page = [i for i in range(1, page_count + 1)]
                data = {
                    "tintuc": tintuc,
                    "tintucmoi": tintucmoi, 
                    "chuyenmuc": chuyenmuc, 
                    "banner": banner,
                    'page_count': number_page, 
                    "title": "Tin Tức Sao Kpop", 
                    "page": 1,      
                    "len_page_count": len(number_page)
                }
                return render(request, self.template_name, data)
            except:
                return render(request, template_error)
        
    
class DetailNews(View):
    template_name = 'news/detail.html'
    def get(self, request, slug):
        chuyenmuc = ChuyenMuc.objects.all()
        tintucmoi = TinTuc.objects.order_by('-created_at')[:10]
        tintucmoi = random.sample(list(tintucmoi), 5)
        banner = BannerMid.objects.all().order_by("?")[:1]
        try:
            tintuc = TinTuc.objects.all().get(DuongDan=slug)
            min_id = TinTuc.objects.all().order_by("id").first().id
            max_id = TinTuc.objects.all().order_by("-id").first().id

            prev_news = tintuc if tintuc.id == min_id else TinTuc.objects.all().get(id=tintuc.id - 1)
            next_news = tintuc if tintuc.id == max_id else TinTuc.objects.all().get(id=tintuc.id + 1)

            data = {
                "tintuc": tintuc,
                "tintucmoi": tintucmoi, 
                "chuyenmuc": chuyenmuc, 
                "banner": banner,
                "title": tintuc.TieuDe, 
                "tieude": tintuc.TieuDe,
                "the": tintuc.The.split(','),
                "prev_news": prev_news,
                "next_news": next_news
            }
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)

    
        