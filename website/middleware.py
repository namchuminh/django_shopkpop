from django.shortcuts import redirect

class AuthMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        user = request.user
        path = request.path
        
        if not user.is_authenticated and path == '/khach-hang/':
            return redirect('customer_login')
        
        if not user.is_authenticated and path == '/gio-hang/':
            return redirect('customer_login')
        
        if not user.is_authenticated and path == '/thanh-toan/':
            return redirect('customer_login')

        if user.is_authenticated and path == '/khach-hang/dang-nhap/':
            return redirect('customer')

        if user.is_authenticated and path == '/khach-hang/dang-ky/':
            return redirect('customer')
        
        if not user.is_authenticated and path.startswith('/khach-hang/don-hang/'):
            return redirect('customer_login')
        

        response = self.get_response(request)
        return response
