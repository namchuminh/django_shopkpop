from django.shortcuts import redirect

class AuthMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        user = request.user
        path = request.path
        
        print(path)
        
        if not user.is_authenticated and path == '/khach-hang/':
            return redirect('customer_login')

        if user.is_authenticated and path == '/khach-hang/dang-nhap/':
            return redirect('customer')

        if user.is_authenticated and path == '/khach-hang/dang-ky/':
            return redirect('customer')
        
        response = self.get_response(request)
        return response
