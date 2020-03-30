import 'package:flutter/material.dart';

class LocalizationService {
  LocalizationService(this.locale);

  Locale locale;

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'Local': 'Local',
      'Global': 'Global',
      'new cases': 'new cases',
      'Recovered': 'Recovered',
      'In Hospitals': 'In Hospitals',
      'Total Global Cases': 'Total Global Cases',
      'Total Local Cases': 'Total Local Cases',
      'Deaths': 'Deaths',
      'Hospital Data': 'Hospital Data',
      'C. Local': 'C. Local',
      'C. Foreign': 'C. Foreign',
      'Total Cumulative': 'Total Cumulative',
      'Total Treatment': 'Total Treatment',
      'Foreign': 'Foreign',
    },
    'ta': {
      'Local': 'Local',
      'Global': 'Global',
      'new cases': 'new cases',
      'Recovered': 'Recovered',
      'In Hospitals': 'In Hospitals',
      'Total Global Cases': 'Total Global Cases',
      'Total Local Cases': 'Total Local Cases',
      'Deaths': 'Deaths',
      'Hospital Data': 'Hospital Data',
      'C. Local': 'C. Local',
      'C. Foreign': 'C. Foreign',
      'Total Cumulative': 'Total Cumulative',
      'Total Treatment': 'Total Treatment',
      'Foreign': 'Foreign',
    },
    'si': {
      'Local': 'දේශීය',
      'Global': 'අන්තර්ජාතික',
      'new cases': 'නව වාර්තා',
      'Recovered': 'සුව වූ',
      'In Hospitals': 'රෝහල්ගත',
      'Total Global Cases': 'මුළු අන්තර්ජාතික වාර්තා',
      'Total Local Cases': 'මුළු දේශීය වාර්තා',
      'Deaths': 'මරණ',
      'Hospital Data': 'රෝහල් දත්ත',
      'C. Local': 'එ. දේශීය',
      'C. Foreign': 'එ. විදේශීය',
      'Total Cumulative': 'මුළු එකතුව',
      'Total Treatment': 'මුළු ප්‍රතිකාර',
      'Foreign': 'විදේශීය',
    }
  };

  String translate(String value) {
    return _localizedValues[locale.languageCode][value];
  }
}
