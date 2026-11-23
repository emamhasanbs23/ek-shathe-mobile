import 'package:ek_shathe_mobile/core/config/flavor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dev flavor uses Ek-Shathe display name', () {
    final config = FlavorConfig.fromFlavor(Flavor.dev);
    expect(config.appName, 'Ek-Shathe (Dev)');
  });

  test('prod flavor uses Ek-Shathe display name', () {
    final config = FlavorConfig.fromFlavor(Flavor.prod);
    expect(config.appName, 'Ek-Shathe');
  });
}
