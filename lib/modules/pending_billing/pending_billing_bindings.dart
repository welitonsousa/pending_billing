import 'package:get/get.dart';
import 'package:pending_billing/repositories/billing/billing_repository.dart';
import 'package:pending_billing/repositories/billing/billing_repository_impl.dart';
import 'package:pending_billing/services/billing/billing_service.dart';
import 'package:pending_billing/services/billing/billing_service_impl.dart';
import './pending_billing_controller.dart';

class PendingBillingBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<BillingRepository>(BillingRepositoryImpl());
    Get.put<BillingService>(BillingServiceImpl(billingRepository: Get.find()));
    Get.put(PendingBillingController(billingService: Get.find()));
  }
}
