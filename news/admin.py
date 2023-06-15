from django.contrib import admin
from .models import TinTuc
from ckeditor.widgets import CKEditorWidget
from django.db import models

class TinTucAdmin(admin.ModelAdmin):
    formfield_overrides = {
        models.TextField: {'widget': CKEditorWidget}
    }

admin.site.register(TinTuc, TinTucAdmin)