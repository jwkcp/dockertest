from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import CreateView, DetailView, ListView, DeleteView

from .models import Post
from .forms import PostForm


class PostCV(CreateView):
    model = Post
    form_class = PostForm


class PostDV(DetailView):
    model = Post


class PostLV(ListView):
    model = Post
    ordering = ['-create_date', ]


class PostRV(DeleteView):
    model = Post
    success_url = reverse_lazy('posts:post_list')

