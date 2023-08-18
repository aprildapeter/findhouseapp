class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({this.city, this.country, this.id, this.imageUrl, this.name, this.price, this.rating, this.address, this.mapUrl, this.phone, this.photos, this.numberOfBedrooms, this.numberOfCupboards, this.numberOfKitchens});

  Space.fromJson(json){
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfKitchens = json ['number_of_kitchens'];
    numberOfBedrooms = json ['number_of_bedrooms'];
    numberOfCupboards = json ['number_of_cupboards'];

  }
}