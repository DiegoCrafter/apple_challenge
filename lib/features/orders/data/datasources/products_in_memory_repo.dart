import 'dart:convert';

import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:challenge_apple/features/orders/domain/repositories/products_repositories.dart';

const products = '''[
  {
    "id": "1",
    "image": "https://m.media-amazon.com/images/I/81oKhu2bsgL._AC_UL640_FMwebp_QL65_.jpg",
    "title": "Media mañana",
    "price": 19.95,
    "calories": 1700,
    "dishes": [
      {
        "id": 1,
        "name": "Lomo de pollo",
        "image": "https://i.ytimg.com/vi/MxXlyMxrVHg/maxresdefault.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 2,
        "name": "Lomo de soya",
        "image": "https://www.cocinavital.mx/wp-content/uploads/2017/08/receta-de-tortitas-de-carne-de-soya-deshidratada.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 3,
        "name": "Ceviche",
        "image": "https://cevicheweb.com/wp-content/uploads/2019/04/83.-ceviche-blanco-peruano.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      }
    ]
  },
  {
    "id": "2",
    "image": "https://m.media-amazon.com/images/I/81HnHYik58L._AC_UL640_FMwebp_QL65_.jpg",
    "title": "Almuerzo",
    "price": 21.95,
    "calories": 700,
    "dishes": [
      {
        "id": 1,
        "name": "Lomo de pollo",
        "image": "https://i.ytimg.com/vi/MxXlyMxrVHg/maxresdefault.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 2,
        "name": "Lomo de soya",
        "image": "https://www.cocinavital.mx/wp-content/uploads/2017/08/receta-de-tortitas-de-carne-de-soya-deshidratada.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 3,
        "name": "Ceviche",
        "image": "https://cevicheweb.com/wp-content/uploads/2019/04/83.-ceviche-blanco-peruano.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      }
    ]
  },
  {
    "id": "3",
    "image": "https://m.media-amazon.com/images/I/81ZYZ9yl1hL._AC_UL640_FMwebp_QL65_.jpg",
    "title": "Media Tarde",
    "price": 52.45,
    "calories": 700,
    "dishes": [
      {
        "id": 1,
        "name": "Lomo de pollo",
        "image": "https://i.ytimg.com/vi/MxXlyMxrVHg/maxresdefault.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 2,
        "name": "Lomo de soya",
        "image": "https://www.cocinavital.mx/wp-content/uploads/2017/08/receta-de-tortitas-de-carne-de-soya-deshidratada.jpg",
        "calories": 300,
        "isRecommended": false,
        "isFavorite": false,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 3,
        "name": "Ceviche",
        "image": "https://cevicheweb.com/wp-content/uploads/2019/04/83.-ceviche-blanco-peruano.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      }
    ]
  },
  {
    "id": "4",
    "image": "https://m.media-amazon.com/images/I/61-DwEh1zrL._AC_UL640_FMwebp_QL65_.jpg",
    "title": "Cena",
    "price": 18.90,
    "calories": 800,
        "dishes": [
      {
        "id": 1,
        "name": "Lomo de pollo",
        "image": "https://i.ytimg.com/vi/MxXlyMxrVHg/maxresdefault.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 2,
        "name": "Lomo de soya",
        "image": "https://www.cocinavital.mx/wp-content/uploads/2017/08/receta-de-tortitas-de-carne-de-soya-deshidratada.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      },
      {
        "id": 3,
        "name": "Ceviche",
        "image": "https://cevicheweb.com/wp-content/uploads/2019/04/83.-ceviche-blanco-peruano.jpg",
        "calories": 800,
        "isRecommended": true,
        "isFavorite": true,
        "features": [ 
          {"lowSodium": true},
          {"lowSugar": false}
        ]
      }
    ]
  }
]''';

class ProductInMemoryRepository implements ProductRepository {
  @override
  Future<List<Product>> get() async {
    return Future.delayed(
        const Duration(seconds: 2), () => productFromJson(products));
  }
}
