class Moto {
  int? id;
  String? name;
  String? brand;
  String? imageUrl;
  String? price;

  Moto({this.id, this.name, this.brand, this.imageUrl, this.price});

  factory Moto.fromJson(Map<String, dynamic> json) {
    return Moto(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      imageUrl: json['imag'],
      price: json['price'],
    );
  }

  // Method to convert a ProductDataModel object into a JSON format
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'imag': imageUrl,
      'price': price,
    };
  }
}
