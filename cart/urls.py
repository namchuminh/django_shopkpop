from django.urls import path
from .views import *

urlpatterns = [
    path('', CartList.as_view(), name='cart_list'),
    path('them-san-pham/', AddProductToCart, name='add_product_cart'),
]
