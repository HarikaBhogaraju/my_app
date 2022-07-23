from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import ProductSerializer
from .models import Product

@api_view(['GET'])
def getRoutes(request):
    routes = [
        {
        'endpoint': '/products/',
        'method': 'GET',
        'body': None,
        'description':'returns an array of product objects'
        },

        {
        'endpoint': '/products/id',
        'method': 'GET',
        'body': None,
        'description':'returns a product object corresponding to id'
        }
    ]
    return Response(routes)

@api_view(['GET'])
def getProducts(request):
    products = Product.objects.all()
    serializer = ProductSerializer(products, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def getProduct(request, primaryKey):
    product = Product.objects.get(id=primaryKey)
    serializer = ProductSerializer(product, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def addProduct(request):
    data = request.data

    prod = Product.objects.create(
        name = data['name'],
        description = data['description']
    )
    serializer = ProductSerializer(prod,many=False)
    return Response(serializer.data)

@api_view(['DELETE'])
def deleteProduct(request, primaryKey):
    prod = Product.objects.get(id = primaryKey)
    prod.delete()
    return Response("Product has been deleted!")

@api_view(['PUT'])
def updateProduct(request, primaryKey):
    data = request.data
    prod = Product.objects.get(id = primaryKey)
    serializer = ProductSerializer(prod,data=request.data)
    if(serializer.is_valid()):
        serializer.save()

    return Response(serializer.data)
