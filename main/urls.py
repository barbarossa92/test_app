from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'(?P<slug>[-_\w]+)/load_comments/', load_comments, name='load_comments'),
    url(r'(?P<slug>[-_\w]+)/add_comment/', add_comment, name='add_comment'),
    url(r'(?P<slug>[-_\w]+)/', MaterialsDetail.as_view(), name='details'),
    url(r'$', MaterialsList.as_view(), name="home_page"),
]




