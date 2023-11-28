import 'package:pending_billing/models/billing/company_model.dart';
import 'package:pending_billing/models/billing/manager_model.dart';
import 'package:pending_billing/models/billing/partner_model.dart';
import 'package:pending_billing/models/billing/procedure_line_model.dart';
import 'package:pending_billing/models/billing/representative_code_model.dart';
import './billing_repository.dart';

class BillingRepositoryImpl extends BillingRepository {
  @override
  Future<List<CompanyModel>> getAllCompanies() async {
    return [];
  }

  @override
  Future<List<ManagerModel>> getAllManagers() async {
    return [];
  }

  @override
  Future<List<PartnerModel>> getAllPartners() async {
    return [];
  }

  @override
  Future<List<ProcedureLineModel>> getAllProceduresLines() async {
    return [];
  }

  @override
  Future<List<RepresentativeCodeModel>> getAllRepresentativesCodes() async {
    return [];
  }
}
