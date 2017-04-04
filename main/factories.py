import factory
from models import Materials, Comments


class MaterialsFactory(factory.DjangoModelFactory):
    class Meta:
        model = Materials

    title = "Test"
    description = "Test"
    slug = "test"


class CommentFactory(factory.DjangoModelFactory):
    class Meta:
        model = Comments

    text = "Test"
    material = factory.SubFactory(MaterialsFactory)
