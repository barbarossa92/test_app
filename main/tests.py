# coding=utf-8
import json
from django.test import TestCase, Client
from django.core.urlresolvers import reverse
from factories import MaterialsFactory, CommentFactory


class CommentsTest(TestCase):
    def setUp(self):
        self.client = Client()
        self.materials = MaterialsFactory()

    def test_load_comments_if_request_will_be_wrong(self):
        response = self.client.post(reverse('load_comments', kwargs={'slug': self.materials.slug}))
        self.assertEqual(response.status_code, 400)

    def test_load_comments_response_must_be_with_status_code_200(self):
        comment = CommentFactory(material=self.materials)
        response = self.client.get(reverse('load_comments', kwargs={'slug': comment.material.slug}),
                                   HTTP_X_REQUESTED_WITH='XMLHttpRequest')
        data = json.loads(response.content)[0]
        self.assertEqual(response.status_code, 200)
        self.assertEqual(data['fields']['text'], "Test")

    def test_add_comment_if_request_will_be_wrong(self):
        response = self.client.get(reverse('add_comment', kwargs={'slug': self.materials.slug}))
        self.assertEqual(json.loads(response.content)['status'], 1)

    def test_add_comment_if_request_will_be_right(self):
        data = {"text": "Test2"}
        response = self.client.post(reverse('add_comment', kwargs={'slug': self.materials.slug}),
                                    data=data, HTTP_X_REQUESTED_WITH = 'XMLHttpRequest')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(json.loads(response.content)['text'], "Test2")
