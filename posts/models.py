from django.db import models
from django.urls import reverse
from dockertest.storage_backends import PrivateMediaStorage


class Post(models.Model):
    title = models.CharField(max_length=100, verbose_name='제목', help_text='제목을 입력하세요.')
    postimage = models.ImageField(storage=PrivateMediaStorage(), upload_to='myimage', blank=True, null=True, verbose_name='첨부 이미지')

    create_date = models.DateTimeField(auto_now_add=True)
    update_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('posts:post_detail',  kwargs={'pk': self.id})

