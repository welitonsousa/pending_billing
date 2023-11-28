import 'package:pending_billing/core/l10n/translate_key.dart';
import 'package:pending_billing/models/billing/company_model.dart';
import 'package:pending_billing/models/billing/manager_model.dart';
import 'package:pending_billing/models/billing/partner_model.dart';
import 'package:pending_billing/models/billing/procedure_line_model.dart';
import 'package:pending_billing/models/billing/representative_code_model.dart';
import './billing_repository.dart';

class BillingRepositoryImpl extends BillingRepository {
  @override
  Future<List<CompanyModel>> getAllCompanies() async {
    return List.generate(
        10,
        (index) =>
            CompanyModel(id: index, name: '${TranslateKey.company} $index'));
  }

  @override
  Future<List<ManagerModel>> getAllManagers() async {
    return List.generate(
        10,
        (index) =>
            ManagerModel(id: index, name: '${TranslateKey.manager} $index'));
  }

  @override
  Future<List<PartnerModel>> getAllPartners() async {
    return List.generate(
        10,
        (index) =>
            PartnerModel(id: index, name: '${TranslateKey.partner} $index'));
  }

  @override
  Future<List<ProcedureLineModel>> getAllProceduresLines() async {
    return List.generate(
        10,
        (index) => ProcedureLineModel(
            id: index, name: '${TranslateKey.procedure} $index'));
  }

  @override
  Future<List<RepresentativeCodeModel>> getAllRepresentativesCodes() async {
    return List.generate(
        10,
        (index) => RepresentativeCodeModel(
            id: index, name: '${TranslateKey.representativeCode} $index'));
  }
}
