import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_number_input/src/models/country_code.dart';
import 'package:mobile_number_input/src/widgets/country_code_dialog.dart';

class MobileNumberInput extends StatefulWidget {
  /// A widget for inputting a mobile number with an integrated country code picker.
///
/// This widget displays a text field with a prefix button that, when tapped,
/// opens a dialog for selecting the country code. The selected country's
/// flag and dial code are then displayed next to the input field. Various
/// aspects of the appearance and behavior of the input field can be
/// customized via the provided parameters.
///
/// Attributes:
///  - `defaultCountry`: The initial [CountryCode] to be used when the widget is created.
///  - `hintText`: Text that suggests what sort of input the field accepts.
///  - `hintStyle`: The style to use for the hintText when the field is empty.
///  - `textStyle`: The style to use for the text being edited.
///  - `dialCodeTextStyle`: The style to use for the displayed dial code.
///  - `border`: The border to display around the field.
///  - `enabledBorder`: The border to display around the field when it is enabled and not focused.
///  - `focusedBorder`: The border to display around the field when it has input focus.
///  - `textInputAction`: The type of action button to use for the keyboard.
///  - `decoration`: The decoration to show around the text field.
///  - `controller`: The [TextEditingController] to use for the text field.
///  - `onCountryChanged`: Callback function invoked when the user selects a different country.
///  - `dialogBackgroundColor`: The background color of the country code picker dialog.
///  - `countryNameTextStyle`: The style to use for the country name in the country code picker dialog.
///  - `countryCodeTextStyle`: The style to use for the country code in the country code picker dialog.
/// 
///
/// Example:
/// ```dart
/// MobileNumberInput(
///   defaultCountry: CountryProvider.findCountryByName('United States'),
///   hintText: 'Enter your mobile number',
///   controller: myController,
///   onCountryChanged: (country) {
///     print('Selected country: ${country.name}');
///   },
///   // ... other properties ...
/// )
/// ```
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
    this.dialogBackgroundColor,
    this.countryNameTextStyle,
    this.countryCodeTextStyle,
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

  //dialog
  final Color? dialogBackgroundColor;
  final TextStyle? countryNameTextStyle;
  final TextStyle? countryCodeTextStyle;

  @override
  State<MobileNumberInput> createState() => _MobileNumberInputState();
}

class _MobileNumberInputState extends State<MobileNumberInput> {
  late CountryCode _selectedCountry;

  @override
  void initState() {
    super.initState();
    _selectedCountry = widget.defaultCountry;
  }

    void _onCountrySelected(CountryCode selectedCountry) {
    setState(() {
      _selectedCountry = selectedCountry;
    });
    widget.onCountryChanged(selectedCountry);
  }

  void _showCountryPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CountryCodeDialog(
          backgroundColor: widget.dialogBackgroundColor,
          countryNameTextStyle: widget.countryNameTextStyle,
          countryCodeTextStyle: widget.countryCodeTextStyle,
          onCountrySelected: _onCountrySelected,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.decoration,
      child: TextFormField(
        controller: widget.controller,
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
            padding:
                const EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 16),
            onPressed: () {
              _showCountryPicker();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(_selectedCountry.flagUri,
                    height: 20, width: 20, package: 'mobile_number_input'),
                // Icon(Icons.arrow_drop_down, color: Colors.white,), TODO: Add arrow icon????
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
