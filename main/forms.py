# coding=utf-8
from django import forms
from models import Comments


class CommentForm(forms.ModelForm):
    class Meta:
        model = Comments
        fields = ['text']
        widgets = {
            'text': forms.TextInput(
                attrs={'id': 'text', 'required': True, 'placeholder': 'Добавить комментарий...',
                       'onkeyup': 'checkParams()'}
            )}

    def clean(self):
        cleaned_data = super(CommentForm, self).clean()
        text = cleaned_data.get('text')
        if text == '':
            raise forms.ValidationError(u"Это поле является обязательным.")
        return cleaned_data
