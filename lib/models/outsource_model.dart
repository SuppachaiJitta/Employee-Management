class OutsourceModel {
  final int? id;
  final String? name;
  final String? company;
  final String? username;
  final String? email;
  final String? address;
  final String? zip;
  final String? state;
  final String? country;
  final String? phone;
  final String? photo;

  OutsourceModel({
    this.id,
    this.name,
    this.company,
    this.username,
    this.email,
    this.address,
    this.zip,
    this.state,
    this.country,
    this.phone,
    this.photo,
  });

  factory OutsourceModel.fromJson(Map<String, dynamic> json) {
    return OutsourceModel(
      id: json['id'],
      name: json['name'],
      company: json['company'],
      username: json['username'],
      email: json['email'],
      address: json['address'],
      zip: json['zip'],
      state: json['state'],
      country: json['country'],
      phone: json['phone'],
      photo: json['photo'],
    );
  }
}
