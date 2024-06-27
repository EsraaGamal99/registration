class SubsriptionModel {
  SubsriptionModel({
      this.id, 
      this.term, 
      this.termArabic, 
      this.discount, 
      this.period, 
      this.periodArabic, 
      this.price, 
      this.forData,});

  SubsriptionModel.fromJson(dynamic json) {
    id = json['id'];
    term = json['term'];
    termArabic = json['term_arabic'];
    discount = json['discount'];
    period = json['period'];
    periodArabic = json['period_arabic'];
    price = json['price'];
    forData = json['for_data'];
  }
  int? id;
  String? term;
  String? termArabic;
  String? discount;
  String? period;
  String? periodArabic;
  String? price;
  String? forData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['term'] = term;
    map['term_arabic'] = termArabic;
    map['discount'] = discount;
    map['period'] = period;
    map['period_arabic'] = periodArabic;
    map['price'] = price;
    map['for_data'] = forData;
    return map;
  }

}