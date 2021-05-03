import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Product({
        this.id,
        this.image,
        this.title,
        this.price,
        this.calories,
        this.dishes,
    });

    String id;
    String image;
    String title;
    double price;
    int calories;
    List<Dish> dishes;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        price: json["price"].toDouble(),
        calories: json["calories"],
        dishes: List<Dish>.from(json["dishes"].map((x) => Dish.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "price": price,
        "calories": calories,
        "dishes": List<dynamic>.from(dishes.map((x) => x.toJson())),
    };
}

class Dish {
    Dish({
        this.id,
        this.name,
        this.image,
        this.calories,
        this.isRecommended,
        this.isFavorite,
        this.features,
    });

    int id;
    String name;
    String image;
    int calories;
    bool isRecommended;
    bool isFavorite;
    List<Feature> features;

    factory Dish.fromJson(Map<String, dynamic> json) => Dish(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        calories: json["calories"],
        isRecommended: json["isRecommended"],
        isFavorite: json["isFavorite"],
        features: List<Feature>.from(json["features"].map((x) => Feature.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "image": image,
        "calories": calories,
        "isRecommended": isRecommended,
        "isFavorite": isFavorite,
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
    };
}

class Feature {
    Feature({
        this.lowSodium,
        this.lowSugar,
    });

    bool lowSodium;
    bool lowSugar;

    factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        lowSodium: json["lowSodium"] == null ? null : json["lowSodium"],
        lowSugar: json["lowSugar"] == null ? null : json["lowSugar"],
    );

    Map<String, dynamic> toJson() => {
        "lowSodium": lowSodium == null ? null : lowSodium,
        "lowSugar": lowSugar == null ? null : lowSugar,
    };
}

enum Name { LOMO_DE_POLLO, LOMO_DE_SOYA, CEVICHE }

final nameValues = EnumValues({
    "Ceviche": Name.CEVICHE,
    "Lomo de pollo": Name.LOMO_DE_POLLO,
    "Lomo de soya": Name.LOMO_DE_SOYA
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
