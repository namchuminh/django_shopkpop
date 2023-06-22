from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify 

class KhachHang(models.Model):
    User = models.OneToOneField(User, on_delete=models.CASCADE)
    SoDienThoai = models.CharField(max_length=11, null=True, blank=True)
    DiaChi = models.CharField(max_length=500, null=True, blank=True)
    GioiTinh = models.CharField(max_length=10, choices=[('1', 'Nam'), (0, "Nữ")])
    DuongDan = models.SlugField(blank=True, null=True)
    
    class Meta:
        verbose_name = "Khách Hàng"
        verbose_name_plural = "Khách Hàng"

    def save(self, *args, **kwargs):
        self.DuongDan = slugify(self.User.first_name + " " + self.User.last_name + " " + str(self.User.id))
        super(KhachHang, self).save(*args, **kwargs)
    
    def __str__(self):
        if self.User.first_name == "" and self.User.last_name == "":
            return "MKH: " + str(self.User.id)
        else:
            return "MKH: " + str(self.User.id) + ", Họ Tên: " + self.User.first_name + " " + self.User.last_name