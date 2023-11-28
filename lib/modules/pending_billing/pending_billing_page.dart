import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './pending_billing_controller.dart';

class PendingBillingPage extends GetView<PendingBillingController> {
  const PendingBillingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PendingBillingPage'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
        ],
      ),
    );
  }
}
