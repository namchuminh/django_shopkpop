from django.urls import path
from .views import *

urlpatterns = [
    path('', PayCart.as_view(), name='pay_cart'),
]
