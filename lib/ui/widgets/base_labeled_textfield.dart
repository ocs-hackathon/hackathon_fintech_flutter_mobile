import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/form_field_styles.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_widget.dart';
import 'package:pinput/pinput.dart';

class BaseLabeledTextField extends StatefulWidget {
  final String label;
  final String hint;
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? initialValue;
  final Widget? extra;
  final bool isPhoneField;
  final int? maxLength;
  final String? prefixText;
  final Widget? suffixIcon;
  final bool isCurrency;
  const BaseLabeledTextField(
      {required this.label,
      required this.hint,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.controller,
      this.keyboardType,
      this.initialValue,
      this.extra,
      this.isPhoneField = false,
      this.prefixText,
      this.maxLength,
      this.suffixIcon,
      this.isCurrency = false,
      super.key});

  @override
  State<BaseLabeledTextField> createState() => _BaseLabeledTextFieldState();
}

class _BaseLabeledTextFieldState extends State<BaseLabeledTextField> {
  String? _errorText;
  TextEditingController controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    setState(() {
      if (widget.controller != null) {
        controller = widget.controller!;
      }
      if (widget.initialValue != null) {
        controller.setText(widget.initialValue!);
      }
    });
    _focusNode.addListener(() {
      if (!_focusNode.hasPrimaryFocus) {
        widget.onSaved?.call(controller.text.trim());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<FormFieldStylesExtenstion>()!;
    return BaseLabeledWidget(
      label: widget.label,
      errorText: _errorText,
      extra: widget.extra,
      child: TextFormField(
        onFieldSubmitted: widget.onSaved,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        focusNode: _focusNode,
        style: styles.bodyStyle,
        validator: (v) {
          setState(() {
            _errorText = widget.validator?.call(v);
          });
          return _errorText != null ? '' : null;
        },
        controller: controller,
        decoration: styles.mainBorderedTextFieldInputDecoration!.copyWith(
          hintText: widget.hint,
          prefixIconConstraints: BoxConstraints(
              maxWidth: !widget.isPhoneField ? 30 : double.infinity),
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixText != null && widget.prefixText!.isNotEmpty
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(widget.prefixText!, style: styles.bodyStyle),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                )
              : null,
        ),
      ),
    );
  }
}
