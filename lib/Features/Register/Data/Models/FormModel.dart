class FormModel {
  FormModel({
      this.id, 
      this.firstName, 
      this.familyName, 
      this.age, 
      this.gender, 
      this.nationality, 
      this.whatsapp, 
      this.email, 
      this.difficulties, 
      this.description, 
      this.subject, 
      this.userIp,});

  FormModel.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['first_name'];
    familyName = json['family_name'];
    age = json['age'];
    gender = json['gender'];
    nationality = json['nationality'];
    whatsapp = json['whatsapp'];
    email = json['email'];
    difficulties = json['difficulties'];
    description = json['description'];
    subject = json['subject'];
    userIp = json['user_ip'];
  }
  int? id;
  String? firstName;
  String? familyName;
  int? age;
  String? gender;
  String? nationality;
  String? whatsapp;
  String? email;
  String? difficulties;
  String? description;
  String? subject;
  String? userIp;

}