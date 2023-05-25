
class CountryCode {
  final String name;
  final String code;

  CountryCode({
    required this.name,
    required this.code,
  });

   CountryCode toEntity() {
    var alpha2Code;
     var name;
     return CountryCode(name: name, code: alpha2Code); 
   }
 }
