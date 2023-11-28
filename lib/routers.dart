import 'package:get/get.dart';
import 'package:pending_billing/modules/pending_billing/pending_billing_bindings.dart';
import 'package:pending_billing/modules/pending_billing/pending_billing_page.dart';

sealed class AppRouters {
  static const PENDING_BILLING = '/pending-billing';

  static List<GetPage> get routers => [
        GetPage(
          name: PENDING_BILLING,
          page: () => const PendingBillingPage(),
          binding: PendingBillingBindings(),
        ),
      ];
}
