class ClassModel {
  ClassModel({
      this.id, 
      this.session, 
      this.hour, 
      this.form, 
      this.subscription,});

  ClassModel.fromJson(dynamic json) {
    id = json['id'];
    session = json['session'];
    hour = json['hour'];
    form = json['form'];
    subscription = json['subscription'];
  }
  int? id;
  String? session;
  String? hour;
  int? form;
  int? subscription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['session'] = session;
    map['hour'] = hour;
    map['form'] = form;
    map['subscription'] = subscription;
    return map;
  }

}