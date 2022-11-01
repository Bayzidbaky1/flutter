// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.isSuccess,
    this.message,
    this.statusCode,
    this.outputRowCount,
    this.obj,
  });

  bool ? isSuccess;
  String ? message;
  int ? statusCode;
  int ? outputRowCount;
  Obj ? obj;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    isSuccess: json["IsSuccess"] == null ? null : json["IsSuccess"],
    message: json["Message"] == null ? null : json["Message"],
    statusCode: json["StatusCode"] == null ? null : json["StatusCode"],
    outputRowCount: json["OutputRowCount"] == null ? null : json["OutputRowCount"],
    obj: json["OBJ"] == null ? null : Obj.fromJson(json["OBJ"]),
  );

  Map<String, dynamic> toJson() => {
    "IsSuccess": isSuccess == null ? null : isSuccess,
    "Message": message == null ? null : message,
    "StatusCode": statusCode == null ? null : statusCode,
    "OutputRowCount": outputRowCount == null ? null : outputRowCount,
    "OBJ": obj == null ? null : obj!.toJson(),
  };
}

class Obj {
  Obj({
    this.id,
    this.customerNo,
    this.dob,
    this.gender,
    this.occupation,
    this.alternetPhoneNumber,
    this.fullName,
    this.username,
    this.email,
    this.adminComment,
    this.isVerified,
    this.isTaxExempt,
    this.hasShoppingCartItems,
    this.isSystemAccount,
    this.lastLoginDateUtc,
    this.lastActivityDateUtc,
    this.billingAddressId,
    this.shippingAddressId,
    this.isActive,
    this.membershipName,
    this.giftPoints,
    this.creditAmount,
    this.customerStatus,
    this.customerStatusName,
    this.photoPath,
  });

  int ? id;
  String ? customerNo;
  String ? dob;
  dynamic  gender;
  dynamic  occupation;
  dynamic  alternetPhoneNumber;
  String ? fullName;
  String ? username;
  String ? email;
  dynamic  adminComment;
  bool ? isVerified;
  bool ? isTaxExempt;
  bool ? hasShoppingCartItems;
  bool ? isSystemAccount;
  DateTime ? lastLoginDateUtc;
  DateTime ? lastActivityDateUtc;
  dynamic  billingAddressId;
  dynamic  shippingAddressId;
  bool ? isActive;
  dynamic membershipName;
  int ? giftPoints;
  int ? creditAmount;
  int ? customerStatus;
  String ? customerStatusName;
  dynamic photoPath;

  factory Obj.fromJson(Map<String, dynamic> json) => Obj(
    id: json["Id"] == null ? null : json["Id"],
    customerNo: json["CustomerNo"] == null ? null : json["CustomerNo"],
    dob: json["DOB"] == null ? null : json["DOB"],
    gender: json["Gender"],
    occupation: json["Occupation"],
    alternetPhoneNumber: json["AlternetPhoneNumber"],
    fullName: json["FullName"] == null ? null : json["FullName"],
    username: json["Username"] == null ? null : json["Username"],
    email: json["Email"] == null ? null : json["Email"],
    adminComment: json["AdminComment"],
    isVerified: json["IsVerified"] == null ? null : json["IsVerified"],
    isTaxExempt: json["IsTaxExempt"] == null ? null : json["IsTaxExempt"],
    hasShoppingCartItems: json["HasShoppingCartItems"] == null ? null : json["HasShoppingCartItems"],
    isSystemAccount: json["IsSystemAccount"] == null ? null : json["IsSystemAccount"],
    lastLoginDateUtc: json["LastLoginDateUtc"] == null ? null : DateTime.parse(json["LastLoginDateUtc"]),
    lastActivityDateUtc: json["LastActivityDateUtc"] == null ? null : DateTime.parse(json["LastActivityDateUtc"]),
    billingAddressId: json["BillingAddress_Id"],
    shippingAddressId: json["ShippingAddress_Id"],
    isActive: json["IsActive"] == null ? null : json["IsActive"],
    membershipName: json["MembershipName"],
    giftPoints: json["GiftPoints"] == null ? null : json["GiftPoints"],
    creditAmount: json["CreditAmount"] == null ? null : json["CreditAmount"],
    customerStatus: json["CustomerStatus"] == null ? null : json["CustomerStatus"],
    customerStatusName: json["CustomerStatusName"] == null ? null : json["CustomerStatusName"],
    photoPath: json["PhotoPath"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id == null ? null : id,
    "CustomerNo": customerNo == null ? null : customerNo,
    "DOB": dob == null ? null : dob,
    "Gender": gender,
    "Occupation": occupation,
    "AlternetPhoneNumber": alternetPhoneNumber,
    "FullName": fullName == null ? null : fullName,
    "Username": username == null ? null : username,
    "Email": email == null ? null : email,
    "AdminComment": adminComment,
    "IsVerified": isVerified == null ? null : isVerified,
    "IsTaxExempt": isTaxExempt == null ? null : isTaxExempt,
    "HasShoppingCartItems": hasShoppingCartItems == null ? null : hasShoppingCartItems,
    "IsSystemAccount": isSystemAccount == null ? null : isSystemAccount,
    "LastLoginDateUtc": lastLoginDateUtc == null ? null : lastLoginDateUtc!.toIso8601String(),
    "LastActivityDateUtc": lastActivityDateUtc == null ? null : lastActivityDateUtc!.toIso8601String(),
    "BillingAddress_Id": billingAddressId,
    "ShippingAddress_Id": shippingAddressId,
    "IsActive": isActive == null ? null : isActive,
    "MembershipName": membershipName,
    "GiftPoints": giftPoints == null ? null : giftPoints,
    "CreditAmount": creditAmount == null ? null : creditAmount,
    "CustomerStatus": customerStatus == null ? null : customerStatus,
    "CustomerStatusName": customerStatusName == null ? null : customerStatusName,
    "PhotoPath": photoPath,
  };
}
