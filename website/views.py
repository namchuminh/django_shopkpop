from django.shortcuts import render, HttpResponse
from django.views import View
# Create your views here.

class Home(View):
    template_name = 'website/home.html'
    def get(self, request):
        
        return render(request, self.template_name)
    