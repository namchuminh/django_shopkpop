from django.contrib import admin
from .models import *

class MauSacAdmin(admin.ModelAdmin):
    readonly_fields = ("id", "TenMauSac", "MaMauSac")

admin.site.register(SanPham)
admin.site.register(ChuyenMuc)
admin.site.register(MauSac, MauSacAdmin)

