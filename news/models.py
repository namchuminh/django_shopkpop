from django.db import models
from ckeditor.fields import RichTextField
from django.utils.text import slugify 


# Create your models here.
class TinTuc(models.Model):
    TieuDe = models.CharField(max_length=500)
    AnhChinh = models.ImageField(upload_to ='uploads/', blank=False, null=False)
    The = models.CharField(max_length=255)
    NoiDung = RichTextField()
    DuongDan = models.SlugField(blank=True, null=True, max_length=550)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Bài Viết"
        verbose_name_plural = "Bài Viết"
    
    def save(self, *args, **kwargs):
        self.DuongDan = slugify(self.TieuDe)
        super(TinTuc, self).save(*args, **kwargs)
    
    def __str__(self):
        return self.TieuDe
    
    