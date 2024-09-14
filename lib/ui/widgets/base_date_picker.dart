import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/form_field_styles.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BaseLabeledDateTimeFormField extends FormField<DateTime?> {
  BaseLabeledDateTimeFormField({
    super.key,
    super.validator,
    super.autovalidateMode,
    super.initialValue,
    required String label,
    required String hint,
    ValueChanged<DateTime?>? onDatePicked,
    DateTime? firstDate,
    DateTime? lastDate,
  }) : super(builder: (state) {
          void onChangedHandler(DateTime? value) {
            state.didChange(value);
            if (onDatePicked != null && value != null) {
              onDatePicked(value);
            }
          }

          return BaseLabeledDatetimePicker(
            label: label,
            hint: hint,
            errorText: state.errorText,
            onDatePicked: onChangedHandler,
            initialDate: initialValue,
            firstDate: firstDate,
            lastDate: lastDate,
          );
        });
}

class BaseLabeledDatetimePicker extends StatefulWidget {
  final String label;
  final String hint;
  final ValueChanged<DateTime?>? onDatePicked;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? errorText;
  const BaseLabeledDatetimePicker({
    required this.label,
    required this.hint,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDatePicked,
    this.errorText,
    super.key,
  });

  @override
  State<BaseLabeledDatetimePicker> createState() =>
      _BaseLabeledDatetimePickerState();
}

class _BaseLabeledDatetimePickerState extends State<BaseLabeledDatetimePicker> {
  DateTime? selectedDate;
  @override
  void initState() {
    if (widget.initialDate != null) {
      setState(() {
        selectedDate = widget.initialDate;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<FormFieldStylesExtenstion>()!;

    return BaseLabeledWidget(
        label: widget.label,
        errorText: widget.errorText,
        child: InkWell(
          onTap: () async {
            await showDatePicker(
                    context: context,
                    initialDatePickerMode: DatePickerMode.year,
                    initialDate: selectedDate ?? widget.initialDate,
                    firstDate: widget.firstDate ??
                        DateTime.now()
                            .subtract(const Duration(days: 100 * 365)),
                    lastDate: widget.lastDate ?? DateTime.now())
                .then((value) {
              if (value != null) {
                setState(() {
                  selectedDate = value;
                });
                if (widget.onDatePicked != null) {
                  widget.onDatePicked!(value);
                }
              }
            });
          },
          child: Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    selectedDate != null
                        ? DateFormat.yMMMd().format(selectedDate!)
                        : widget.hint,
                    style: selectedDate != null
                        ? styles.bodyStyle
                        : styles.hintStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(
                  Icons.calendar_month_outlined,
                  size: 18,
                ),
              ],
            ),
          ),
        ));
  }
}
