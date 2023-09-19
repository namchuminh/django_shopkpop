from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.views import View
from order.models import DonHang, ChiTietDonHang
from .models import *
from website.models import LoaiThongTin, ThongTin
from django.contrib.auth import update_session_auth_hash
import re
# Create your views here.

template_error = '404error.html'

class Customer(View):
    template_name = 'customer/customer.html'

    def get(self, request):
        try:
            user = User.objects.all().get(username=request.user.username)
            khachhang = KhachHang.objects.all().get(User=user)

            donhang = DonHang.objects.all().filter(KhachHang = khachhang).order_by("-id")

            for dh in donhang:
                dh.ThoiGian = dh.ThoiGian.strftime("%H:%M:%S | %d-%m-%Y")
            
            data = {"title": "Thông Tin Khách Hàng", "khachhang": khachhang, "user": user, "donhang": donhang}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
        
    def post(self, request):
        try:
            user = User.objects.all().get(username=request.user.username)
            khachhang = KhachHang.objects.all().get(User=user)

            donhang = DonHang.objects.all().filter(KhachHang = khachhang).order_by("-id")

            hodem = request.POST['first_name']
            ten = request.POST['last_name']
            email = request.POST['email']
            phone = request.POST['phone']
            address = request.POST['address']
            old_password = request.POST['old_password']
            new_password = request.POST['new_password']
            new_password2 = request.POST['new_password2']


            data = {"title": "Thông Tin Khách Hàng", "khachhang": khachhang, "user": user, "donhang": donhang}

            if phone == "" or hodem == "" or ten == "" or email == "":
                data['message'] = "Vui lòng nhập đủ thông tin!"
                return render(request, self.template_name, data)
            
            pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
            if(bool(re.match(pattern, email)) == False):
                data['message'] = "Email không hợp lệ!"
                return render(request, self.template_name, data)
            
            ho_dem_pattern = r'^[a-zA-Z ]+$'
            if(re.search(ho_dem_pattern, hodem) == False):
                data['message'] = "Họ tên đệm không không hợp lệ!"
                return render(request, self.template_name, data)
            
            ten_pattern = r'^[a-zA-Z]+$'
            if(re.search(ten_pattern, ten) == False):
                data['message'] = "Tên không không hợp lệ!"
                return render(request, self.template_name, data)

            existing_user = User.objects.exclude(username=request.user.username).filter(email=email).exists()

            if existing_user:
                data['message'] = "Email này đã được đăng ký bới người khác trước đó!"
                return render(request, self.template_name, data)

            user.first_name = hodem
            user.last_name = ten
            user.email = email

            khachhang.SoDienThoai = phone
            khachhang.DiaChi = address

            user.save()
            khachhang.save()
            
            user = User.objects.all().get(username=request.user.username)
            khachhang = KhachHang.objects.all().get(User=user)

            donhang = DonHang.objects.all().filter(KhachHang = khachhang).order_by("-id")

            data = {"title": "Thông Tin Khách Hàng", "khachhang": khachhang, "user": user, "donhang": donhang}

            if old_password != "":
                if user.check_password(old_password):
                    if new_password != new_password2:
                        data['message'] = "Mật khẩu xác nhận không trùng khớp!"
                        return render(request, self.template_name, data)
                    else:
                        user.set_password(new_password)
                        user.save()
                        update_session_auth_hash(request, user)

                else:
                    data['message'] = "Mật khẩu hiện tại không chính xác!"
                    return render(request, self.template_name, data)

            data['success'] = "Cập nhật thông tin khách hàng thành công!"
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
        
class CustomerOrderDetail(View):
    template_name = 'customer/order.html'

    def get(self, request, id):
        try:
            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phiship")
            phiship = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri

            loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phivat")
            phivat = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri

            donhang = DonHang.objects.all().get(pk=id)
            chitietdonhang = ChiTietDonHang.objects.all().filter(DonHang=donhang)

            total_price = 0
    
            for item in chitietdonhang:
                total_price += item.SoLuong * item.GiaBan
                item.GiaTien = item.GiaBan * item.SoLuong

            thanhtoan = int(total_price + int(phiship)) 
            thanhtoan = thanhtoan + int(thanhtoan * int(phivat) / 100)

            data = {"title": "Thông Tin Đơn Hàng ĐH000" + str(id), "chitietdonhang": chitietdonhang, "madon": id, "phiship": phiship, "phivat": phivat, "thanhtoan": thanhtoan, "tongdon": total_price}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)

class CustomerOrderCancel(View):
    def get(self, request, id):
        try:
            user = User.objects.all().get(username=request.user.username)
            khachhang = KhachHang.objects.all().get(User=user)

            don_hang = DonHang.objects.get(id=id,KhachHang=khachhang)
            don_hang.TrangThai = "khh"
            don_hang.save()
            return redirect('customer')
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

