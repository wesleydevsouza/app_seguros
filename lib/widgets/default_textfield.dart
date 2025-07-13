import 'package:flutter/material.dart';

import '../constants/size_config.dart';
import '../constants/styling.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? prefix;
  final String? hintText;
  final double? tamanhoFonte;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool? enableInteractive;
  final Function()? onTap;
  final Function(String?)? submitFunc;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final int? maxLength;
  final String? initialValue;
  final Color? activeBorderColor;
  final Color? disabledBorderColor;
  final String? Function(String?)? validator;

  const DefaultTextField({
    super.key,
    required this.controller,
    required this.label,
    this.prefix,
    this.tamanhoFonte,
    this.textInputType,
    this.hintText,
    this.enabled,
    this.enableInteractive,
    this.onTap,
    this.onSaved,
    this.focusNode,
    this.submitFunc,
    this.onChanged,
    this.maxLength,
    this.initialValue,
    this.activeBorderColor,
    this.disabledBorderColor,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      style: AppTheme.textoGeral,
      controller: controller,
      focusNode: focusNode,
      keyboardType: textInputType,
      onTap: onTap,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLength: maxLength,
      onFieldSubmitted: submitFunc,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: SizeConfig.heightMultiplier * 2,
          horizontal: SizeConfig.heightMultiplier * 2,
        ),
        prefixText: prefix,
        hintText: hintText ?? label,
        counterText: "",
        hintStyle: const TextStyle(
          color: AppTheme.corFonte,
          fontWeight: FontWeight.normal,
        ),
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: activeBorderColor ?? AppTheme.corBorda, width: 3.5),
          borderRadius: const BorderRadius.all(Radius.circular(26)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(26)),
          borderSide: BorderSide(
              color: disabledBorderColor ?? AppTheme.corBorda, width: 2.0),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
        filled: true,
        fillColor: AppTheme.corCard,
      ),
      enabled: enabled ?? true,
      enableInteractiveSelection: enableInteractive ?? true,
    );
  }
}
