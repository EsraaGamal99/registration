class SpecifyModel {
  SpecifyModel({
      this.id, 
      this.stage, 
      this.classroom, 
      this.courseStudy, 
      this.form,});

  SpecifyModel.fromJson(dynamic json) {
    id = json['id'];
    stage = json['stage'] != null ? json['stage'].cast<String>() : [];
    classroom = json['classroom'] != null ? json['classroom'].cast<String>() : [];
    courseStudy = json['course_study'] != null ? json['course_study'].cast<String>() : [];
    form = json['form'];
  }
  int? id;
  List<String>? stage;
  List<String>? classroom;
  List<String>? courseStudy;
  int? form;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['stage'] = stage;
    map['classroom'] = classroom;
    map['course_study'] = courseStudy;
    map['form'] = form;
    return map;
  }

}