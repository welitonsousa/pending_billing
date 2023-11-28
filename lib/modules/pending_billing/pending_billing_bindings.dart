import 'package:get/get.dart';
import './pending_billing_controller.dart';

class PendingBillingBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PendingBillingController());
    }
}