# Generated by Django 4.0.5 on 2023-07-01 17:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('order', '0006_alter_donhang_trangthai'),
    ]

    operations = [
        migrations.AlterField(
            model_name='donhang',
            name='TrangThai',
            field=models.CharField(choices=[('cxl', 'Chưa Xử Lý'), ('dxl', 'Đã Xử Lý'), ('dcbh', 'Đang Chuẩn Bị Hàng'), ('dgh', 'Đang Giao Hàng'), ('dghh', 'Đã Giao Hàng'), ('khh', 'Khách Hàng Hủy'), ('adh', 'Admin Hủy')], default='cxl', max_length=25),
        ),
    ]
