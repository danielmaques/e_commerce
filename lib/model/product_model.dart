class ProductModel {
  String name, image, description, color, sized, price;

  ProductModel({
    this.name,
    this.image,
    this.description,
    this.color,
    this.sized,
    this.price,
  });

  ProductModel.fromJson(Map<dynamic, dynamic> map){
    if(map == null){
      return;
    }

    name = map['name'];
    image = map['image'];
    color = map['color'];
    sized = map['sized'];
    price = map['price'];
    description = map['description'];

  }

  toJson(){
    return {
      'name' : name,
      'image' : image,
      'color' : color,
      'sized' : sized,
      'price' : price,
      'description' : description,
    };
  }

}
