# coding=utf-8
import json

from django.http import HttpResponse
from django.http import HttpResponseBadRequest
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.core import serializers

from models import Materials, Comments
from django.views.generic import ListView, DetailView
from forms import CommentForm
# Create your views here.


class MaterialsList(ListView):
    model = Materials
    template_name = "materials_list.html"
    paginate_by = 5


class MaterialsDetail(DetailView):
    model = Materials
    template_name = "materials_detail.html"

    def get_context_data(self, **kwargs):
        context = super(MaterialsDetail, self).get_context_data(**kwargs)
        context['form'] = CommentForm
        return context


def load_comments(request, slug):
    if request.method == 'GET' and request.is_ajax():
        material = get_object_or_404(Materials, slug=slug)
        data = serializers.serialize('json', material.comments_set.all())
        return HttpResponse(data)
    return HttpResponseBadRequest("Wrong request")


def add_comment(request, slug):
    if request.method == "POST" and request.is_ajax():
        form = CommentForm(request.POST)
        if form.is_valid():
            text = request.POST.get('text', '')
            material = get_object_or_404(Materials, slug=slug)
            comment = Comments(text=text, material=material)
            comment.save()
            data = {"text": str(comment.text), "date": str(comment.date)}
            return JsonResponse(data)
    return JsonResponse({'status': 1, 'message': 'Error'})







