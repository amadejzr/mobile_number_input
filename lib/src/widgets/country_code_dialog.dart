import 'package:flutter/material.dart';
import 'package:mobile_number_input/src/models/country_code.dart';
import 'package:mobile_number_input/src/providers/country_provider.dart';
import 'dart:async';

class CountryCodeDialog extends StatefulWidget {
  const CountryCodeDialog({
    super.key,
    required this.onCountrySelected,
    this.backgroundColor,
    this.countryNameTextStyle,
    this.countryCodeTextStyle,
  });

  final void Function(CountryCode) onCountrySelected;
  final Color? backgroundColor;
  final TextStyle? countryNameTextStyle;
  final TextStyle? countryCodeTextStyle;

  @override
  State<CountryCodeDialog> createState() => _CountryCodeDialogState();
}

class _CountryCodeDialogState extends State<CountryCodeDialog> {
  late List<CountryCode> countryList;
  final ValueNotifier<List<CountryCode>> _filteredCountryListNotifier =
      ValueNotifier([]);
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    countryList = CountryProvider.getCountries();
    _filteredCountryListNotifier.value = countryList;
  }

  void _handleCountryTap(CountryCode selectedCountry) {
    widget.onCountrySelected(selectedCountry);
    Navigator.of(context).pop();
  }

  void _filterCountries(String enteredKeyword) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      List<CountryCode> filteredList = enteredKeyword.isEmpty
          ? countryList
          : countryList
              .where((country) => country.name
                  .toLowerCase()
                  .contains(enteredKeyword.toLowerCase()))
              .toList();
      _filteredCountryListNotifier.value = filteredList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: widget.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterCountries,
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<List<CountryCode>>(
              valueListenable: _filteredCountryListNotifier,
              builder: (context, filteredCountryList, child) {
                return ListView.builder(
                  itemCount: filteredCountryList.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () => _handleCountryTap(filteredCountryList[index]),
                    leading: Image.asset(
                      filteredCountryList[index].flagUri,
                      height: 20,
                      width: 20,
                      package: 'mobile_number_input',
                    ),
                    title: Text(
                      filteredCountryList[index].name,
                      style: widget.countryNameTextStyle,
                    ),
                    trailing: Text(
                      filteredCountryList[index].dialCode,
                      style: widget.countryCodeTextStyle,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    _filteredCountryListNotifier.dispose();
    super.dispose();
  }
}
