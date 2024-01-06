import 'package:mobile_number_input/src/models/country_code.dart';

/// A provider for country-related operations, specifically dealing with
/// retrieving and setting default country codes and details.
///
/// This class holds a list of [CountryCode] objects that represent various
/// countries with their respective dial codes and flag URIs. It provides
/// utility methods to retrieve these countries or find a specific one based
/// on a given name.
class CountryProvider {
  /// Finds and returns a [CountryCode] based on a given country name.
  ///
  /// This method searches through the list of available [countries] for a
  /// match with the given [countryName]. If a match is found, it returns the
  /// corresponding [CountryCode]. If no match is found, it throws an exception.
  ///
  /// - Parameters:
  ///   - countryName: A `String` representing the name of the country to find.
  /// - Returns: The [CountryCode] of the found country.
  /// - Throws: An `Exception` if no matching country is found.
  ///
  /// Example:
  /// ```dart
  /// var countryCode = CountryProvider.findCountryByName('Canada');
  /// print(countryCode.dialCode); // Output: +1
  /// ```
  static CountryCode findCountryByName(String countryName) {
    var foundCountry = countries.firstWhere(
      (country) => country.name.toLowerCase() == countryName.toLowerCase(),
      orElse: () => throw Exception('No country found'),
    );
    return foundCountry;
  }

  /// A static list of [CountryCode] objects representing various countries.
  ///
  /// This list includes details such as the country's name, its dial code,
  /// and the URI to its flag image. It's used throughout the provider to
  /// perform various operations related to country codes.
  static final List<CountryCode> countries = [
    CountryCode(
        name: 'United States',
        dialCode: '+1',
        flagUri: 'assets/country/us.png'),
    CountryCode(
        name: 'Canada', dialCode: '+1', flagUri: 'assets/country/ca.png'),
    CountryCode(
        name: 'Slovenia', dialCode: '+386', flagUri: 'assets/country/si.png'),
    CountryCode(
        name: 'Bosnia', dialCode: '+387', flagUri: 'assets/country/ba.png'),
    CountryCode(
        name: 'Croatia', dialCode: '+385', flagUri: 'assets/country/hr.png'),
    CountryCode(
        name: 'China', dialCode: '+86', flagUri: 'assets/country/cn.png'),
    CountryCode(
        name: 'Andorra', dialCode: '+376', flagUri: 'assets/country/ad.png'),
    CountryCode(
        name: 'United Arab Emirates',
        dialCode: '+971',
        flagUri: 'assets/country/ae.png'),
    CountryCode(
        name: 'Afghanistan', dialCode: '+93', flagUri: 'assets/country/af.png'),
    CountryCode(
        name: 'Antigua and Barbuda',
        dialCode: '+1-268',
        flagUri: 'assets/country/ag.png'),
    CountryCode(
        name: 'Anguilla', dialCode: '+1-264', flagUri: 'assets/country/ai.png'),
    CountryCode(
        name: 'Albania', dialCode: '+355', flagUri: 'assets/country/al.png'),
    CountryCode(
        name: 'Armenia', dialCode: '+374', flagUri: 'assets/country/am.png'),
  ];

  /// Retrieves the list of all available countries.
  ///
  /// This method returns a list of all [CountryCode] objects that represent
  /// the various countries available in this provider.
  ///
  /// - Returns: A list of [CountryCode] objects.
  ///
  /// Example:
  /// ```dart
  /// var allCountries = CountryProvider.getCountries();
  /// for (var country in allCountries) {
  ///   print('${country.name}: ${country.dialCode}');
  /// }
  /// ```
  static List<CountryCode> getCountries() {
    return countries;
  }
}
