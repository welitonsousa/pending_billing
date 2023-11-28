import 'package:pending_billing/models/billing/company_model.dart';
import 'package:pending_billing/models/billing/manager_model.dart';
import 'package:pending_billing/models/billing/partner_model.dart';
import 'package:pending_billing/models/billing/procedure_line_model.dart';
import 'package:pending_billing/models/billing/representative_code_model.dart';

abstract class BillingRepository {
  Future<List<CompanyModel>> getAllCompanies();
  Future<List<PartnerModel>> getAllPartners();
  Future<List<ProcedureLineModel>> getAllProceduresLines();
  Future<List<RepresentativeCodeModel>> getAllRepresentativesCodes();
  Future<List<ManagerModel>> getAllManagers();
}
