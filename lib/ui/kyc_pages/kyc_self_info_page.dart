import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_date_picker.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_dropdown.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_labeled_textfield.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_rich_titled_page.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class KycSelfInfoPage extends StatefulWidget {
  const KycSelfInfoPage({super.key});

  @override
  State<KycSelfInfoPage> createState() => _KycSelfInfoPageState();
}

class _KycSelfInfoPageState extends State<KycSelfInfoPage> {
  final _formKey = GlobalKey<FormState>();
  var selectableCities = <Map<String, String>>[];
  var selectableZones = <Map<String, String>>[];

  @override
  void initState() {
    _setupAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseTitledPage(
      title: "Please Enter The Following Informations",
      withPadding: true,
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              kVerticalGap20,
              Column(
                children: [
                  const BaseLabeledTextField(
                    label: "First Name",
                    hint: "Enter your First name",
                  ),
                  const BaseLabeledTextField(
                    label: "Middle Name",
                    hint: "Enter your Middle name",
                  ),
                  const BaseLabeledTextField(
                    label: "Last Name",
                    hint: "Enter your Last name",
                  ),
                  const BaseLabeledTextField(
                    label: "Phone Number",
                    hint: "Enter your phone number",
                    keyboardType: TextInputType.phone,
                  ),
                  const BaseLabeledDropdown(
                    label: "Gender",
                    hint: "Select Gender",
                    items: {"MALE": "Male", "FEMALE": "Female"},
                  ),
                  BaseLabeledDateTimeFormField(
                    label: "Birth Date",
                    hint: "01/01/1991",
                    lastDate:
                        DateTime.now().subtract(const Duration(days: 365 * 18)),
                  ),
                  const BaseLabeledDropdown(
                    label: "Prefered Bank",
                    hint: "Prefered Bank",
                    items: {"CBE": "CBE", "ABYSSINIA": "Abyssinia"},
                  ),
                  const BaseLabeledTextField(
                    label: "Bank Account Number",
                    hint: "Enter Bank Account",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      onNext: () async {
        // if (_formKey.currentState!.validate()) {
        FocusScope.of(context).requestFocus(FocusNode());
        await Future.delayed(Duration.zero).then((value) {
          Get.toNamed(AppRoutes.kycDocumentUploadPage);
        });
        // }
      },
    );
  }

  _setupAddress() {}
}
