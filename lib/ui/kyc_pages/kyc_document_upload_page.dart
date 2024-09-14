import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_file_picker.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_rich_titled_page.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class KycDocumentUploadPage extends StatelessWidget {
  const KycDocumentUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTitledPage(
      title: "Upload The Following Documents",
      hasBackButton: true,
      onNext: () async {
        Get.toNamed(AppRoutes.homePage);
      },
      children: [
        kVerticalGap60,
        Form(
          child: Column(
            children: [
              BaseLabeledFilePickerFormField(
                label: "Kebele Id",
                hint: "Upload your Kebele Id",
                onFilePicked: (value) {},
              ),
              BaseLabeledFilePickerFormField(
                label: "National Id",
                hint: "Upload your national id",
              ),
              BaseLabeledFilePickerFormField(
                label: "Bank Statement",
                hint: "Upload your Bank Statement",
              ),
            ],
          ),
        )
      ],
    );
  }
}
