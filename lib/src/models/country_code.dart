/// Represents the details of a country's telephone code and flag.
///
/// This class is a simple data container for a country's name, dial code, and
/// the URI for its flag. It's typically used in conjunction with [CountryProvider]
/// to represent and manage country information in an application.
///
/// Attributes:
///  - `name`: A `String` representing the name of the country.
///  - `dialCode`: A `String` representing the dial code for the country.
///  - `flagUri`: A `String` representing the URI to the country's flag image.
///
/// Example:
/// ```dart
/// var usa = CountryCode(
///   name: 'United States',
///   dialCode: '+1',
///   flagUri: 'assets/country/us.png',
/// );
/// print(usa.name); // Output: United States
/// print(usa.dialCode); // Output: +1
/// ```
class CountryCode {
  final String name;
  final String dialCode;
  final String flagUri;

  CountryCode({required this.name, required this.dialCode, required this.flagUri});
}