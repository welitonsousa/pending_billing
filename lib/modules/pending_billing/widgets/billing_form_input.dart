import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pending_billing/core/ui/widgets/fake_input_widget.dart';
import 'package:pending_billing/core/ui/widgets/required_widget.dart';
import 'package:pending_billing/core/utils/debounce.dart';
import 'package:pending_billing/entities/billing_entity.dart';
import 'package:pending_billing/modules/pending_billing/widgets/select_billing_dialog.dart';

class BillingFormInput extends StatefulWidget {
  final List<BillingEntity> listItems;
  final String label;
  final String? value;
  final bool isRequired;
  final void Function(BillingEntity) onChange;
  const BillingFormInput({
    super.key,
    required this.listItems,
    required this.label,
    required this.isRequired,
    required this.onChange,
    this.value,
  });

  @override
  State<BillingFormInput> createState() => _BillingFormInputState();
}

class _BillingFormInputState extends State<BillingFormInput> {
  final debounce = Debounce();
  void onTap() {
    Get.dialog(SelectBillingDialog(
      list: widget.listItems,
      onChange: widget.onChange,
    ));
  }

  void verifyValue(String? id) {
    if (id == null) return;
    final index = widget.listItems.indexWhere((e) => e.id.toString() == id);
    if (index != -1) widget.onChange(widget.listItems[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            onChanged: (e) {
              debounce.run(() {
                verifyValue(e);
              });
            },
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Icon(Icons.search),
          ),
        ),
        FakeInputWidget(onTap: onTap, label: widget.label, value: widget.value),
        RequiredWidget(isRequired: widget.isRequired)
      ],
    );
  }
}
