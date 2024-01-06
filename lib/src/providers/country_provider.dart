
import 'package:mobile_number_input/src/models/country_code.dart';

class CountryProvider {

  static final CountryCode defaultCountry = CountryCode(name: 'Slovenia', dialCode: '+386', flagUri: 'assets/country/si.png');

  static CountryCode setDefaultCountry(String countryName) {
    var foundCountry = countries.firstWhere(
      (country) => country.name.toLowerCase() == countryName.toLowerCase(),
      orElse: () => throw Exception('No country found'),
    );
    return foundCountry;
  }

  static final List<CountryCode> countries = [
    CountryCode(name: 'United States', dialCode: '+1', flagUri: 'assets/country/us.png'),
    CountryCode(name: 'Canada', dialCode: '+1', flagUri: 'assets/country/ca.png'),
    CountryCode(name: 'Slovenia', dialCode: '+386', flagUri: 'assets/country/si.png'),
    CountryCode(name: 'Bosnia', dialCode: '+387', flagUri: 'assets/country/ba.png'),
    CountryCode(name: 'Croatia', dialCode: '+385', flagUri: 'assets/country/hr.png'),
    CountryCode(name: 'China', dialCode: '+86', flagUri: 'assets/country/cn.png'),
    CountryCode(name: 'Andorra', dialCode: '+376', flagUri: 'assets/country/ad.png'),
    CountryCode(name: 'United Arab Emirates', dialCode: '+971', flagUri: 'assets/country/ae.png'),
    CountryCode(name: 'Afghanistan', dialCode: '+93', flagUri: 'assets/country/af.png'),
    CountryCode(name: 'Antigua and Barbuda', dialCode: '+1-268', flagUri: 'assets/country/ag.png'),
    CountryCode(name: 'Anguilla', dialCode: '+1-264', flagUri: 'assets/country/ai.png'),
    CountryCode(name: 'Albania', dialCode: '+355', flagUri: 'assets/country/al.png'),
    CountryCode(name: 'Armenia', dialCode: '+374', flagUri: 'assets/country/am.png'),
  ];

  static List<CountryCode> getCountries() {
    return countries;
  }
}