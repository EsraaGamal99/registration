class CourseModel {
  CourseModel({
      this.id, 
      this.form, 
      this.materials,});

  CourseModel.fromJson(dynamic json) {
    id = json['id'];
    form = json['form'];
    materials = json['materials'] != null ? json['materials'].cast<int>() : [];
  }
  int? id;
  int? form;
  List<int>? materials;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['form'] = form;
    map['materials'] = materials;
    return map;
  }

}