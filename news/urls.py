from django.urls import path
from .views import *

urlpatterns = [
    path('', ListNews.as_view(), name='list_news'),
    path('<slug:slug>/', DetailNews.as_view(), name='detail_news'),
]
