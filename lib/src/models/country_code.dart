class CountryCode {
  final String name;
  final String dialCode;
  final String flagUri;

  CountryCode({required this.name, required this.dialCode, required this.flagUri});

  factory CountryCode.fromJson(Map<String, dynamic> json) {
    return CountryCode(
      name: json['name'],
      dialCode: json['dial_code'],
      flagUri: json['flagUri'],
    );
  }
}