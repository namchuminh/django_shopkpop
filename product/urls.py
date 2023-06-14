from django.urls import path
from .views import *

urlpatterns = [
    path('', Product.as_view(), name='product'),
    path('<slug:slug>/', DetailProduct.as_view(), name='detail_product'),
]
