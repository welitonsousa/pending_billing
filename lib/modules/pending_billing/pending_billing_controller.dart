import 'package:get/get.dart';
import 'package:pending_billing/entities/billing_entity.dart';
import 'package:pending_billing/services/billing/billing_service.dart';

class PendingBillingController extends GetxController {
  final BillingService _billingService;

  PendingBillingController({required BillingService billingService})
      : _billingService = billingService;

  final companies = <BillingEntity>[].obs;
  final managers = <BillingEntity>[].obs;
  final partners = <BillingEntity>[].obs;
  final proceduresLines = <BillingEntity>[].obs;
  final representativesCodes = <BillingEntity>[].obs;

  final selectedCompany = Rxn<BillingEntity>();
  final selectedManager = Rxn<BillingEntity>();
  final selectedPartner = Rxn<BillingEntity>();
  final selectedProcedureLine = Rxn<BillingEntity>();
  final selectedRepresentativeCode = Rxn<BillingEntity>();

  @override
  onInit() {
    super.onInit();
    getAllBillingData();
  }

  Future<void> getAllBillingData() async {
    final res = await Future.wait([
      _billingService.getAllCompanies(),
      _billingService.getAllManagers(),
      _billingService.getAllPartners(),
      _billingService.getAllProceduresLines(),
      _billingService.getAllRepresentativesCodes(),
    ]);
    companies.assignAll(res[0]);
    managers.assignAll(res[1]);
    partners.assignAll(res[2]);
    proceduresLines.assignAll(res[3]);
    representativesCodes.assignAll(res[4]);
  }
}
