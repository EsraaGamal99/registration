class PeriodModel {
  PeriodModel({
      this.id, 
      this.shift, 
      this.time, 
      this.form, 
      this.day,});

  PeriodModel.fromJson(dynamic json) {
    id = json['id'];
    shift = json['shift'];
    time = json['time'];
    form = json['form'];
    day = json['day'] != null ? json['day'].cast<int>() : [];
  }
  int? id;
  String? shift;
  String? time;
  int? form;
  List<int>? day;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['shift'] = shift;
    map['time'] = time;
    map['form'] = form;
    map['day'] = day;
    return map;
  }

}