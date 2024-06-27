class MaterialModel {
  MaterialModel({
      this.id, 
      this.englishData, 
      this.arabicData, 
      this.forData, 
      this.image,});

  MaterialModel.fromJson(dynamic json) {
    id = json['id'];
    englishData = json['english_data'];
    arabicData = json['arabic_data'];
    forData = json['for_data'];
    image = json['image'];
  }
  int? id;
  String? englishData;
  String? arabicData;
  String? forData;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['english_data'] = englishData;
    map['arabic_data'] = arabicData;
    map['for_data'] = forData;
    map['image'] = image;
    return map;
  }

}