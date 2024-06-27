class CountModel {
  CountModel({
      this.id, 
      this.studentCount, 
      this.form, 
      this.purposes,});

  CountModel.fromJson(dynamic json) {
    id = json['id'];
    studentCount = json['student_count'];
    form = json['form'];
    purposes = json['purposes'] != null ? json['purposes'].cast<int>() : [];
  }
  int? id;
  String? studentCount;
  int? form;
  List<int>? purposes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['student_count'] = studentCount;
    map['form'] = form;
    map['purposes'] = purposes;
    return map;
  }

}