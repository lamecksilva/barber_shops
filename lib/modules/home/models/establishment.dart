class Establishment {
  String? sId;
  String? name;
  String? pictureUrl;
  double? distance;

  Establishment({this.sId, this.name, this.pictureUrl, this.distance});

  Establishment.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    pictureUrl = json['pictureUrl'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['pictureUrl'] = pictureUrl;
    data['distance'] = distance;
    return data;
  }
}
