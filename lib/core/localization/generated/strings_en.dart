import 'strings.dart';

/// The translations for English (`en`).
class StringsEn extends Strings {
  StringsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'StarterTemplate';

  @override
  String get companyName => 'Clean Architecture';

  @override
  String get login => 'Login';

  @override
  String get increment => 'Increment';

  @override
  String get decrement => 'Decrement';
}
