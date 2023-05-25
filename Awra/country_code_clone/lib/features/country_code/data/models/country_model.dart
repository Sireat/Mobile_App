import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';

class CountryModel {
  final String name;
  final String alpha2Code;

  CountryModel({
    required this.name,
    required this.alpha2Code,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'],
      alpha2Code: json['alpha2Code'],
    );
  }

   CountryCode toEntity() {
     return CountryCode(name: name, code: alpha2Code);
   }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'alpha2Code': alpha2Code,
    };
  }
}
