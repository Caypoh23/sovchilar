// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
  preferRelativeImports: true,
)
void configureDependencies() => getIt.init();

Future<void> resetDependencies() async {
  await getIt.reset();
  configureDependencies();
}
