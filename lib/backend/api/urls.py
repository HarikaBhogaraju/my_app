from django.urls import path
from . import views

urlpatterns = [
    path('',views.getRoutes),
    path('products/', views.getProducts),
    path('products/create/', views.addProduct),
    path('products/<str:primaryKey>/delete/',views.deleteProduct),
    path('products/<str:primaryKey>/update/',views.updateProduct),
    path('products/<str:primaryKey>/', views.getProduct),

]
