import 'package:json_annotation/json_annotation.dart';
import 'package:jsontest/address.dart';
part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String name;
  final String email;
  final String age;
  @JsonKey(name: 'created_time')
  final int createdTime;
  final Address address;

  User(this.name, this.email, this.age, this.createdTime, this.address);

  //맵 구조로부터 새로운 인스턴스를 만들어내는 User.fromJson() 생성자.

  // User.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       email = json['email'],
  //       age = json['age'];

  //JsonSerializable 시키기
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

//인코딩과 직렬화 - 데이터 구조를 문자열로 바꾸는 것
//유저 인스턴스를 map으로 바꾸는 toJson()메서드.
  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'email': email,
  //       'age': age,
  //     };

  //JsonSerializable 시키기
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
