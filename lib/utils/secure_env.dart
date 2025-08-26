import 'package:flutter_dotenv/flutter_dotenv.dart';

class SecureEnv {
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
  static String? get sentryDsn => dotenv.env['SENTRY_DSN'];
  static String? get analyticsKey => dotenv.env['ANALYTICS_KEY'];
}
