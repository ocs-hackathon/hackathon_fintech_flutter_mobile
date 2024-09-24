import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';

class BaseUploadButtonFormField extends FormField<String?> {
  BaseUploadButtonFormField({
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

          return BaseUploadButton(
            label: label,
            hint: hint,
            onFilePicked: onChangedHandler,
          );
        });
}

class BaseUploadButton extends StatefulWidget {
  final String label;
  final String hint;
  final ValueSetter<String>? onFilePicked;
  const BaseUploadButton({
    required this.label,
    required this.hint,
    this.onFilePicked,
    super.key,
  });

  @override
  State<BaseUploadButton> createState() => _BaseUploadButtonState();
}

class _BaseUploadButtonState extends State<BaseUploadButton> {
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
    var cardStyles = Theme.of(context).extension<AppDecorationExtension>()!;
    return Container(
        decoration: cardStyles.lightCardDecoration,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.label,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            BaseButton(
              text: "Select File",
              onTap: () async {
                await FilePicker.platform.pickFiles(
                    type: FileType.custom,
                    allowedExtensions: ["jpg", "pdf", "png"]).then((value) {
                  if (value != null && value.files.isNotEmpty) {
                    setState(() {
                      result = value.files.first.path;
                      displayText = value.files.map((e) => e.name).join(", ");
                    });
                    if (widget.onFilePicked != null) {
                      widget.onFilePicked!(result!);
                    }
                  }
                });
              },
              extra: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.add_a_photo,
                  color: AppColors.primaryWhiteColor,
                ),
              ),
            )
          ],
        ));
  }
}
