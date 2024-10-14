import 'package:flutnew/services/navigation_service_impl.dart';
import 'package:get_it/get_it.dart';

/// Sets up a service locator using the GetIt library for dependency injection in Flutter. It registers several singleton instances of service classes such as [AppSizeConfigImpl], [AppConfigImpl], and [AppNavigationServiceImpl].
///
/// The [setupServiceLocator] function takes in a [Flavor] parameter, which is an enum that helps to differentiate between different environments or flavors of the app (such as production, staging, or development).
///
/// The function then registers instances of two view models: [SplashScreenViewModel] and [HomePageViewModel]. These view models are not singletons, so they will be recreated every time they are requested.
// void setupServiceLocator(Flavor flavor) {
// implementation details
// }

GetIt serviceLocator = GetIt.instance;
final navigationService = serviceLocator<AppNavigationServiceImpl>();

Future<void> setupServiceLocator() async {
  serviceLocator.registerSingleton(AppNavigationServiceImpl());
}
