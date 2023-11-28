import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pending_billing/core/l10n/en_us.dart';
import 'package:pending_billing/core/l10n/pt_br.dart';

class TranslationService extends Translations {
  static const fallbackLocale = Locale('pt', 'BR');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'pt_BR': ptBR,
      };
}
