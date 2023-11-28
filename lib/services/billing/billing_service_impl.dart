import 'package:pending_billing/models/billing/company_model.dart';
import 'package:pending_billing/models/billing/manager_model.dart';
import 'package:pending_billing/models/billing/partner_model.dart';
import 'package:pending_billing/models/billing/procedure_line_model.dart';
import 'package:pending_billing/models/billing/representative_code_model.dart';
import 'package:pending_billing/repositories/billing/billing_repository.dart';
import './billing_service.dart';

class BillingServiceImpl extends BillingService {
  final BillingRepository _billingRepository;

  BillingServiceImpl({required BillingRepository billingRepository})
      : _billingRepository = billingRepository;

  @override
  Future<List<CompanyModel>> getAllCompanies() {
    return _billingRepository.getAllCompanies();
  }

  @override
  Future<List<ManagerModel>> getAllManagers() {
    return _billingRepository.getAllManagers();
  }

  @override
  Future<List<PartnerModel>> getAllPartners() {
    return _billingRepository.getAllPartners();
  }

  @override
  Future<List<ProcedureLineModel>> getAllProceduresLines() {
    return _billingRepository.getAllProceduresLines();
  }

  @override
  Future<List<RepresentativeCodeModel>> getAllRepresentativesCodes() {
    return _billingRepository.getAllRepresentativesCodes();
  }
}
