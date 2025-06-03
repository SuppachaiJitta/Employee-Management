class PermanentModel {
  final String? id;
  final String? name;
  final String? position;
  final String? email;
  final String? phone;

  PermanentModel({
    this.id,
    this.name,
    this.position,
    this.email,
    this.phone,
  });

  factory PermanentModel.fromJson(Map<String, dynamic> json) {
    return PermanentModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      position: json['position'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
    );
  }
}
