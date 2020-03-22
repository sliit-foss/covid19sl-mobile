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
       'Local': 'உள்ளூர்',
       'Global': 'சர்வதேச',
       'new cases': 'புதிய நோயாளிகள்',
       'Recovered': 'குணமடைந்தோர்',
       'In Hospitals': 'வைத்தியசாலையில் உள்ளோர்',
       'Total Global Cases': 'உலகளவில் பாதிப்புக்குள்ளானோர்',
       'Total Local Cases': 'உள்ளூரில் பாதிப்புக்குள்ளானோர்',
       'Deaths': 'மரணங்கள் ',
       'Hospital Data': 'வைத்தியசாலை தரவு',
       'C. Local': 'மொத்த உள்நாட்டினர்',
       'C. Foreign': 'மொத்த வெளிநாட்டினர்',
       'Total Cumulative': 'ஒட்டுமொத்த',
       'Total Treatment': 'மொத்த சிகிச்சை',
       'Foreign': 'வெளிநாடு',
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
