from django.urls import path

from . import views

app_name = 'posts'

urlpatterns = [
    path('', views.PostLV.as_view(), name='post_list'),
    path('add/', views.PostCV.as_view(), name='post_add'),
    path('<int:pk>/', views.PostDV.as_view(), name='post_detail'),
    path('<int:pk>/delete/', views.PostRV.as_view(), name='post_delete'),
]