class CategoryProduct {
  String? sId;
  String? name;
  String? pictureThumb;
  bool? active;

  CategoryProduct({this.sId, this.name, this.pictureThumb, this.active});

  CategoryProduct.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    pictureThumb = json['picture_thumb'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['picture_thumb'] = pictureThumb;
    data['active'] = active;
    return data;
  }
}
