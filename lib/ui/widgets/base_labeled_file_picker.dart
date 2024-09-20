import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/form_field_styles.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class BaseLabeledFilePickerFormField extends FormField<String?> {
  BaseLabeledFilePickerFormField({
    super.key,
    super.validator,
    super.autovalidateMode,
    required String label,
    required String hint,
    ValueSetter<String?>? onFilePicked,
    // Status? status,
    super.initialValue,
  }) : super(builder: (state) {
          void onChangedHandler(String? value) {
            state.didChange(value);
            if (onFilePicked != null && value != null) {
              onFilePicked(value);
            }
          }

          return BaseLabeledFilePicker(
            label: label,
            hint: hint,
            errorText: state.errorText,
            onFilePicked: onChangedHandler,
            // status: status,
          );
        });
}

class BaseLabeledFilePicker extends StatefulWidget {
  final String label;
  final String hint;
  final ValueSetter<String>? onFilePicked;
  // final Status? status;
  final String? errorText;
  const BaseLabeledFilePicker({
    required this.label,
    required this.hint,
    this.onFilePicked,
    // this.status,
    this.errorText,
    super.key,
  });

  @override
  State<BaseLabeledFilePicker> createState() => _BaseLabeledFilePickerState();
}

class _BaseLabeledFilePickerState extends State<BaseLabeledFilePicker> {
  String? result;
  String? displayText;
  bool isDisabled = false;
  @override
  void initState() {
    // setState(() {
    //   displayText =
    //       widget.status?.isSuccess ?? false ? "Document Uploaded" : null;
    //   // field is disabled on when the upload status is  loading or success
    //   isDisabled = (widget.status?.isLoading ?? false) ||
    //       (widget.status?.isSuccess ?? false);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).extension<FormFieldStylesExtenstion>()!;
    return BaseLabeledWidget(
      label: widget.label,
      errorText: widget.errorText,
      child: InkWell(
        onTap: () async {
          if (!isDisabled) {
            await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ["jpg", "pdf", "png"]).then((value) {
              if (value != null && value.files.isNotEmpty) {
                setState(() {
                  result = value.files.first.path;
                  displayText = value.files.map((e) => e.name).join(", ");
                });
                if (widget.onFilePicked != null) widget.onFilePicked!(result!);
              }
            });
          }
        },
        child: Container(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 12,
            right: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (displayText != null)
                  ? SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        (displayText!),
                        style: !isDisabled ? style.bodyStyle : style.hintStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        widget.hint,
                        style: style.hintStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
