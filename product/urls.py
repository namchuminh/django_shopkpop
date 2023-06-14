from django.urls import path
from .views import *

urlpatterns = [
    path('<slug:slug>/', DetailProduct.as_view(), name='detail_product'),
]
