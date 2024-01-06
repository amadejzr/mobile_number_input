import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_number_input/mobile_number_input.dart';

void main() {
  group('CountryProvider Tests', () {
    test('Should return a country when a valid name is provided', () {
      String countryName = 'Canada';
      CountryCode result = CountryProvider.findCountryByName(countryName);

      expect(result.name, countryName);
    });

    test('Should throw an exception when an invalid name is provided', () {
      String countryName = 'InvalidCountryName';

      expect(() => CountryProvider.findCountryByName(countryName),
          throwsException);
    });
  });
}
