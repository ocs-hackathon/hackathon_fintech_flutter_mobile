import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/form_field_styles.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_widget.dart';
import 'package:flutter/material.dart';

class BaseLabeledDropdown extends StatefulWidget {
  final String label;
  final String hint;
  // key value pair where key is the value of the item and value is the label
  // example: {"eng": "English", "amh": "Amharic"} or {0: "Orange", 1: "Apple"}
  final Map<dynamic, String> items;
  final ValueSetter<dynamic>? onChanged;
  final dynamic initialValue;

  final String? Function(dynamic)? validator;
  const BaseLabeledDropdown(
      {required this.label,
      required this.hint,
      required this.items,
      this.initialValue,
      this.onChanged,
      this.validator,
      super.key});

  @override
  State<BaseLabeledDropdown> createState() => _BaseLabeledDropdownState();
}

class _BaseLabeledDropdownState extends State<BaseLabeledDropdown> {
  dynamic value;
  String? _errorText;
  @override
  void initState() {
    if (widget.initialValue != null) {
      value = widget.initialValue;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BaseLabeledDropdown oldWidget) {
    if (widget.items.containsKey(widget.initialValue)) {
      value = widget.initialValue;
    } else {
      value = null;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<FormFieldStylesExtenstion>()!;

    return BaseLabeledWidget(
        label: widget.label,
        errorText: _errorText,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<dynamic>(
              isExpanded: true,
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              decoration: styles.mainBorderedTextFieldInputDecoration!.copyWith(
                suffixIcon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                ),
              ),
              onChanged: (value) => {
                    setState(() {
                      this.value = value;
                    }),
                    widget.onChanged?.call(value),
                  },
              validator: (v) {
                setState(() {
                  _errorText = widget.validator?.call(v);
                });
                return _errorText != null ? '' : null;
              },
              hint: Text(
                widget.items[value] ?? widget.hint,
                textAlign: TextAlign.left,
                style: widget.items[value] != null
                    ? styles.bodyStyle
                    : styles.hintStyle,
                overflow: TextOverflow.ellipsis,
              ),
              value: value,
              icon: const SizedBox(),
              items: _getItems()),
        ));
  }

  _getItems() {
    return widget.items.entries
        .map(
          (e) => DropdownMenuItem<dynamic>(
            value: e.key,
            child: Text(
              e.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .extension<FormFieldStylesExtenstion>()!
                  .bodyStyle,
            ),
          ),
        )
        .toList();
  }
}
