from django.urls import path
from .views import *

urlpatterns = [
    path('', Category.as_view(), name='category'),
    path('<slug:slug>/', DetailCategory.as_view(), name='detail_category'),
]
