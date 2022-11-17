from rest_framework import routers
from .api import ProjectViewSetActividades, ProjectViewSetComentarios, ProjectViewSetUser

router = routers.DefaultRouter()

router.register("actividades", ProjectViewSetActividades, "actividades")
router.register("comentarios", ProjectViewSetComentarios, "comentarios")
router.register("user", ProjectViewSetUser, "user")

urlpatterns = router.urls
