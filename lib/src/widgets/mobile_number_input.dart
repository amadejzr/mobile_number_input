import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_number_input/src/models/country_code.dart';
import 'package:mobile_number_input/src/widgets/country_code_dialog.dart';

class MobileNumberInput extends StatefulWidget {
  const MobileNumberInput({
    super.key,
    this.hintText,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.textStyle,
    this.textInputAction,
    this.dialCodeTextStyle,
    this.decoration,
    required this.controller,
    required this.defaultCountry,
    required this.onCountryChanged,
  });

  final CountryCode defaultCountry;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextStyle? dialCodeTextStyle;
  final OutlineInputBorder? border;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? focusedBorder;
  final TextInputAction? textInputAction;
  final BoxDecoration? decoration;
  final TextEditingController controller;
  final Function(CountryCode) onCountryChanged;

  @override
  State<MobileNumberInput> createState() => _MobileNumberInputState();
}

class _MobileNumberInputState extends State<MobileNumberInput> {
  late CountryCode _selectedCountry;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _selectedCountry = widget.defaultCountry;
    _controller = widget.controller;
  }

  void _showCountryPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CountryCodeDialog(
          onCountrySelected: (CountryCode selectedCountry) {
            setState(
              () {
                _selectedCountry = selectedCountry;
              },
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.decoration,
      child: TextFormField(
        controller: _controller,
        autocorrect: false,
        keyboardType: TextInputType.phone,
        textInputAction: widget.textInputAction,
        style: widget.textStyle,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your username';
          }
          return null;
        },
        decoration: InputDecoration(
          isDense: true,
          hintStyle: widget.hintStyle,
          prefixIcon: CupertinoButton(
            onPressed: () {
              _showCountryPicker();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(_selectedCountry.flagUri,
                    height: 20, width: 20, package: 'mobile_number_input'),
                Text(
                  ' ${_selectedCountry.dialCode}',
                  style: widget.dialCodeTextStyle,
                ),
              ],
            ),
          ),
          hintText: widget.hintText,
          border: widget.border,
          enabledBorder: widget.enabledBorder,
          focusedBorder: widget.focusedBorder,
        ),
      ),
    );
  }
}
