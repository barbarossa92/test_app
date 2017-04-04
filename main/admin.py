# coding=utf-8
from django.contrib import admin
from models import Materials, Comments
from django.core.urlresolvers import reverse
# Register your models here


class CommentsAdmin(admin.TabularInline):
    model = Comments
    extra = 0

    def has_add_permission(self, request):
        return False


class MaterialsAdmin(admin.ModelAdmin):
    list_display = ('id', 'date', 'published', 'title', 'delete_link',)
    prepopulated_fields = {"slug": ("title", )}
    inlines = [CommentsAdmin]

    def delete_link(self, obj):
        info = obj._meta.app_label, obj._meta.model_name
        url = reverse('admin:%s_%s_delete' % info, args=(obj.id,))
        return '<a href="%s">%s</a>' % (url, u'Удалить',)

    delete_link.allow_tags = True
    delete_link.short_description = u'Удалить'


admin.site.register(Materials, MaterialsAdmin)