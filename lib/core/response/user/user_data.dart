import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class UserData {
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'name')
  Name? name;
  @JsonKey(name: 'location')
  Location? location;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'login')
  Login? login;
  @JsonKey(name: 'dob')
  Dob? dob;
  @JsonKey(name: 'registered')
  Registered? registered;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'cell')
  String? cell;
  @JsonKey(name: 'id')
  Id? id;
  @JsonKey(name: 'picture')
  Picture? picture;
  @JsonKey(name: 'nat')
  String? nat;

  UserData(
      {this.gender,
      this.name,
      this.location,
      this.email,
      this.login,
      this.dob,
      this.registered,
      this.phone,
      this.cell,
      this.id,
      this.picture,
      this.nat});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Name {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'first')
  String? first;
  @JsonKey(name: 'last')
  String? last;

  Name({this.title, this.first, this.last});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Location {
  @JsonKey(name: 'street')
  Street? street;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'state')
  String? state;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'postcode')
  dynamic postcode;
  @JsonKey(name: 'coordinates')
  Coordinates? coordinates;
  @JsonKey(name: 'timezone')
  Timezone? timezone;

  Location(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.postcode,
      this.coordinates,
      this.timezone});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Street {
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'name')
  String? name;

  Street({this.number, this.name});

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

  Map<String, dynamic> toJson() => _$StreetToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Coordinates {
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longitude')
  String? longitude;

  Coordinates({this.latitude, this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Timezone {
  @JsonKey(name: 'offset')
  String? offset;
  @JsonKey(name: 'description')
  String? description;

  Timezone({this.offset, this.description});

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Login {
  @JsonKey(name: 'uuid')
  String? uuid;
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'salt')
  String? salt;
  @JsonKey(name: 'md5')
  String? md5;
  @JsonKey(name: 'sha1')
  String? sha1;
  @JsonKey(name: 'sha256')
  String? sha256;

  Login(
      {this.uuid,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Dob {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'age')
  int? age;

  Dob({this.date, this.age});

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  Map<String, dynamic> toJson() => _$DobToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Registered {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'age')
  int? age;

  Registered({this.date, this.age});

  factory Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);

  Map<String, dynamic> toJson() => _$RegisteredToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Id {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'value')
  String? value;

  Id({this.name, this.value});

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Picture {
  @JsonKey(name: 'large')
  String? large;
  @JsonKey(name: 'medium')
  String? medium;
  @JsonKey(name: 'thumbnail')
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Info {
  @JsonKey(name: 'seed')
  String? seed;
  @JsonKey(name: 'results')
  int? results;
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'version')
  String? version;

  Info({this.seed, this.results, this.page, this.version});

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
