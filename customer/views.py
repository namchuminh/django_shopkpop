from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.views import View
from .models import *
import re
# Create your views here.

template_error = '404error.html'

class Customer(View):
    template_name = 'customer/customer.html'

    def get(self, request):
        try:
            user = User.objects.all().get(username=request.user.username)
            khachhang = KhachHang.objects.all().get(User=user)
            data = {"title": "Thông Tin Khách Hàng", "khachhang": khachhang, "user": user}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
    
    
class CustomerLogin(View):
    template_name = 'customer/login.html'
    
    def get(self, request):
        try:
            data = {"title": "Đăng Nhập"}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
    
    def post(self, request):
        taikhoan = request.POST['username']
        matkhau = request.POST['password']
        try:
            data = {"title": "Đăng Nhập"}
            if taikhoan == "" or matkhau == "":
                data['message'] = "Tài khoản hoặc mật khẩu không được trống!"
                return render(request, self.template_name, data)
            
            pattern = r'^[a-zA-Z0-9_-]+$'
            if re.match(pattern, taikhoan) == False:
                data['message'] = "Tài khoản không hợp lệ"
                return render(request, self.template_name, data)
            
            user = authenticate(request, username=taikhoan, password=matkhau)
            if user:
                if user.is_active:
                    login(request, user)
                    return redirect('customer')
                else:
                    data['message'] = "Tài khoản của bạn đang bị khóa!"
                    return render(request, self.template_name, data)
            else:
                data['message'] = "Tài khoản hoặc mật khẩu không chính xác!"
                return render(request, self.template_name, data)
        except:
            return render(request, template_error)
        
def CustomerLogout(request):
    logout(request)
    return redirect('customer_login')

class CustomerRegister(View):
    template_name = 'customer/register.html'
    
    def get(self, request):
        try:
            data = {"title": "Đăng Ký"}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
    
    def post(self, request):
        taikhoan = request.POST['username']
        hodem = request.POST['firstname']
        ten = request.POST['lastname']
        email = request.POST['email']
        matkhau = request.POST['password']
        matkhau2 = request.POST['confirmpassword']
        try:
            data = {"title": "Đăng Nhập"}
            if taikhoan == "" or matkhau == "" or hodem == "" or ten == "" or email == "" or matkhau2 == "":
                data['message'] = "Vui lòng nhập đủ thông tin!"
                return render(request, self.template_name, data)
            
            pattern = r'^[a-zA-Z0-9_-]+$'
            if re.match(pattern, taikhoan) == False:
                data['message'] = "Tài khoản không hợp lệ!"
                return render(request, self.template_name, data)
            
            pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
            if(bool(re.match(pattern, email)) == False):
                data['message'] = "Email không hợp lệ!"
                return render(request, self.template_name, data)
            
            if(matkhau != matkhau2):
                data['message'] = "Mật khẩu nhập lại không chính xác!"
                return render(request, self.template_name, data)
            
            ho_dem_pattern = r'^[a-zA-Z ]+$'
            if(re.search(ho_dem_pattern, hodem) == False):
                data['message'] = "Họ tên đệm không không hợp lệ!"
                return render(request, self.template_name, data)
            
            ten_pattern = r'^[a-zA-Z]+$'
            if(re.search(ten_pattern, ten) == False):
                data['message'] = "Tên không không hợp lệ!"
                return render(request, self.template_name, data)
            
            user = User.objects.all().filter(username=taikhoan).count()
            
            if(user >= 1):
                data['message'] = "Tên người dùng đã được đăng ký bởi người khác!"
                return render(request, self.template_name, data)
            
            email = User.objects.all().filter(email=email).count()
            
            if(email >= 1):
                data['message'] = "Email này đã được đăng ký trước đó!"
                return render(request, self.template_name, data)
            
            user = User.objects.create_user(taikhoan, email, matkhau, first_name=hodem, last_name=ten)
            user.save()
            
            user = User.objects.all().get(username=taikhoan)
            
            khachhang = KhachHang(User=user)
            khachhang.save()
            
            data['success'] = "Đăng ký tài khoản thành công!"
            return render(request, self.template_name, data)
            
        except:
            return render(request, template_error)

