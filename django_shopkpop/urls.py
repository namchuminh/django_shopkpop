from django.contrib import admin
from django.conf import settings
from django.urls import path, include
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('website.urls')),
    path('san-pham/', include('product.urls')),
    path('chuyen-muc/', include('category.urls')),
    path('tin-tuc/', include('news.urls')),
    path('lien-he/', include('contact.urls')),
    path('khach-hang/', include('customer.urls')),
    path('gio-hang/', include('cart.urls')),
    path('thanh-toan/', include('order.urls')),
    path('ckeditor/', include('ckeditor_uploader.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
