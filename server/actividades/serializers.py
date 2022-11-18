from rest_framework import serializers
from .models import Actividades, Comentarios
from django.contrib.auth.models import User


class ActividadesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Actividades
        fields = ("id", "nombre_actividad","descripcion_actividad", "imagen_actividad","precio_actividad","categoria_actividad")

class ComentariosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comentarios
        fields = ("id", "comentario","id_comentario","usuario_comentario")

class AuthUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ("id", "username", "password")