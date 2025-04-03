class UserModel {
  final String uid;
  final String email;
  final String name;
  final String? mobile;
  final String? date;

  UserModel(
      {required this.uid,
      required this.email,
      required this.name,
      required this.mobile,
      required this.date});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        name: map['name'],
        mobile: map['mobile'],
        date: map['date']);
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'mobile': mobile,
      'date': date
    };
  }
}

class DoctorsModel {
  final String name;
  final String specality;
  final String educations;

  DoctorsModel(
      {required this.name, required this.specality, required this.educations});

  factory DoctorsModel.fromMap(Map<String, dynamic> map) {
    return DoctorsModel(
        name: map['name'],
        specality: map['specality'],
        educations: map['educations']);
  }
  Map<String, dynamic> toMap() {
    return {'name': name, 'specality': specality, 'educations': educations};
  }
}
