from django.urls import path
from .views import *

urlpatterns = [
    path('', CartList.as_view(), name='cart_list'),
    path('them-san-pham/', AddProductToCart, name='add_product_cart'),  
    path('sua-so-luong/', UpdateNumberToCart, name='update_number_cart'),
    path('sua-mau-sac/', UpdateColorToCart, name='update_color_cart'),
    path('xoa-san-pham/<int:id>', DeleteProductToCart, name='delete_product_cart'),
    path('kiem-tra/', CheckPropertyProduct, name='check_property_product'),
]
