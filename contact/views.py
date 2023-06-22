from django.shortcuts import render
from django.views import View
from django.contrib.auth.models import User 
from customer.models import *
from .models import *
import re

# Create your views here.
template_error = '404error.html'

class Contact(View):
    
    template_name = 'contact/contact.html'
    
    def get(self, request):
        try:
            if(request.user.is_authenticated):
                user = User.objects.all().get(username=request.user.username)
                khachhang = KhachHang.objects.all().get(User=user)
                data = {"title": "Liên Hệ Với Chúng Tôi", "khachhang": khachhang}
                return render(request, self.template_name, data)
            else:
                data = {"title": "Liên Hệ Với Chúng Tôi"}
                return render(request, self.template_name, data)
        except:
            return render(request, template_error)
        
    def post(self, request):
        try:
            name = request.POST['fname']
            email = request.POST['email']
            phone = request.POST['phone']
            subject = request.POST['subject']
            message = request.POST['message']
            
            if(name == "" or email == "" or phone == "" or subject == "" or message == ""): 
                data = {"title": "Liên Hệ Với Chúng Tôi", "errorMessage": "Vui lòng nhập đủ thông tin!"}
                return render(request, self.template_name, data)
            
            phone_regex = re.compile(r'^(03|05|07|08|09)\d{8}$')
            if(bool(phone_regex.match(phone)) == False):
                data = {"title": "Liên Hệ Với Chúng Tôi", "errorMessage": "Vui lòng nhập số điện thoại chính xác!"}
                return render(request, self.template_name, data)
            
            pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
            if(bool(re.match(pattern, email)) == False):
                data = {"title": "Liên Hệ Với Chúng Tôi", "errorMessage": "Vui lòng nhập email hợp lệ!"}
                return render(request, self.template_name, data)
            
            
            lienhe = LienHe(TenKhachHang = name, Email = email, SoDienThoai = phone, TieuDe = subject, NoiDung = message)
            lienhe.save()
            
            if(request.user.is_authenticated):
                user = User.objects.all().get(username=request.user.username)
                khachhang = KhachHang.objects.all().get(User=user)
                data = {"title": "Liên Hệ Với Chúng Tôi", "khachhang": khachhang, "success": "Cảm ơn bạn đã gửi liên hệ!"}
                return render(request, self.template_name, data)
            else:
                data = {"title": "Liên Hệ Với Chúng Tôi", "success": "Cảm ơn bạn đã gửi liên hệ!"}
                return render(request, self.template_name, data)
        
        except:
            return render(request, template_error)