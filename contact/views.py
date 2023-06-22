from django.shortcuts import render
from django.views import View
import re

# Create your views here.
template_error = '404error.html'

class Contact(View):
    
    template_name = 'contact/contact.html'
    
    def get(self, request):
        try:
            data = {"title": "Liên Hệ Với Chúng Tôi"}
            return render(request, self.template_name, data)
        except:
            return render(request, template_error)
        
    def post(self, request):
        try:
            name = request.POST['name']
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
            
            phone_regex = re.compile(r'^(03|05|07|08|09)\d{8}$')
            if(bool(phone_regex.match(phone)) == False):
                data = {"title": "Liên Hệ Với Chúng Tôi", "errorMessage": "Vui lòng nhập số điện thoại hợp lệ!"}
                return render(request, self.template_name, data)
            
            pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
            if(bool(re.match(pattern, email)) == False):
                data = {"title": "Liên Hệ Với Chúng Tôi", "errorMessage": "Vui lòng nhập email hợp lệ!"}
                return render(request, self.template_name, data)
            
            # Action create contact in database
            return render(request, self.template_name, data)

        except:
            return render(request, template_error)