class PayModel {
  PayModel({
      this.message, 
      this.paymentId, 
      this.price, 
      this.status,});

  PayModel.fromJson(dynamic json) {
    message = json['message'];
    paymentId = json['payment_id'];
    price = json['price'];
    status = json['status'];
  }
  String? message;
  int? paymentId;
  double? price;
  int? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['payment_id'] = paymentId;
    map['price'] = price;
    map['status'] = status;
    return map;
  }

}