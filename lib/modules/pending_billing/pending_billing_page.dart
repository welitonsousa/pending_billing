import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pending_billing/core/l10n/translate_key.dart';
import 'package:pending_billing/modules/pending_billing/widgets/billing_form_input.dart';
import './pending_billing_controller.dart';

class PendingBillingPage extends GetView<PendingBillingController> {
  const PendingBillingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(TranslateKey.pendingBilling.tr)),
      body: Obx(() {
        return ListView(
          padding: const EdgeInsets.all(18),
          children: [
            BillingFormInput(
              isRequired: true,
              label: TranslateKey.company.tr,
              listItems: controller.companies,
              value: controller.selectedCompany.value?.name,
              onChange: controller.selectedCompany,
            ),
            BillingFormInput(
              isRequired: true,
              label: TranslateKey.partner.tr,
              listItems: controller.partners,
              value: controller.selectedPartner.value?.name,
              onChange: controller.selectedPartner,
            ),
            BillingFormInput(
              isRequired: true,
              label: TranslateKey.procedure.tr,
              listItems: controller.proceduresLines,
              value: controller.selectedProcedureLine.value?.name,
              onChange: controller.selectedProcedureLine,
            ),
            BillingFormInput(
              isRequired: false,
              label: TranslateKey.representativeCode.tr,
              listItems: controller.representativesCodes,
              value: controller.selectedRepresentativeCode.value?.name,
              onChange: controller.selectedRepresentativeCode,
            ),
            BillingFormInput(
              isRequired: false,
              label: TranslateKey.manager.tr,
              listItems: controller.managers,
              value: controller.selectedManager.value?.name,
              onChange: controller.selectedManager,
            ),
          ],
        );
      }),
    );
  }
}
