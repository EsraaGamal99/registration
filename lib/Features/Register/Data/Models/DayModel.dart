class DayModel {
  DayModel({
      this.id, 
      this.englishData, 
      this.arabicData, 
      this.forData,});

  DayModel.fromJson(dynamic json) {
    id = json['id'];
    englishData = json['english_data'];
    arabicData = json['arabic_data'];
    forData = json['for_data'];
  }
  int? id;
  String? englishData;
  String? arabicData;
  String? forData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['english_data'] = englishData;
    map['arabic_data'] = arabicData;
    map['for_data'] = forData;
    return map;
  }

}