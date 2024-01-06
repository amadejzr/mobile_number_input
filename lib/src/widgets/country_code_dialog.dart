import 'package:flutter/material.dart';
import 'package:mobile_number_input/src/models/country_code.dart';
import 'package:mobile_number_input/src/providers/country_provider.dart';

class CountryCodeDialog extends StatefulWidget {
  const CountryCodeDialog({super.key, required this.onCountrySelected});

  final void Function(CountryCode) onCountrySelected;

  @override
  State<CountryCodeDialog> createState() => _CountryCodeDialogState();
}

class _CountryCodeDialogState extends State<CountryCodeDialog> {
  late List<CountryCode> countryList;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    countryList = CountryProvider.getCountries();
  }


    void _handleCountryTap(CountryCode selectedCountry) {
      widget.onCountrySelected(selectedCountry);
      Navigator.of(context).pop();
    }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: countryList.length,
          itemBuilder: (context, index) => ListTile(
            onTap: () => _handleCountryTap(countryList[index]),
            leading: Image.asset(
              countryList[index].flagUri,
              height: 20,
              width: 20,
              package: 'mobile_number_input',
            ),
            title: Text(countryList[index].name),
            trailing: Text(countryList[index].dialCode),
          ),
        ),
      ),
    );
  }
}
