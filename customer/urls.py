from django.urls import path
from .views import *

urlpatterns = [
    path('', Customer.as_view(), name='customer'),
    path('don-hang/<int:id>/', CustomerOrderDetail.as_view(), name='customer_order_detail'),
    path('don-hang/huy-don/<int:id>/', CustomerOrderCancel.as_view(), name='customer_order_cancel'),
    path('dang-nhap/', CustomerLogin.as_view(), name='customer_login'),
    path('dang-xuat/', CustomerLogout, name='customer_logout'),
    path('dang-ky/', CustomerRegister.as_view(), name='customer_register'),
]
