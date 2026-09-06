import 'package:flutter/material.dart' show Locale;

import '../repositories/app_setting_repository.dart';

final class UpdateLocaleUseCase {
  const UpdateLocaleUseCase(this._repository);

  final AppSettingRepository _repository;

  Future<void> call(Locale locale) => _repository.updateLocale(locale);
}
