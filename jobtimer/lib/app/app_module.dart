
import 'package:flutter_modular/flutter_modular.dart';
import 'package:jobtimer/app/core/ui/database/database.dart';
import 'package:jobtimer/app/core/ui/database/database_impl.dart';
import 'package:jobtimer/app/modules/home/home_module.dart';
import 'package:jobtimer/app/modules/login/login_module.dart';
import 'package:jobtimer/app/modules/splash/splash_page.dart';
import 'package:jobtimer/app/services/auth/auth_service.dart';
import 'package:jobtimer/app/services/auth/auth_service_impl.dart';

class AppModule extends Module{
  @override
  List<Bind> get binds => [
    Bind.lazySingleton<AuthService>((i) => AuthServiceImpl()),
    Bind.lazySingleton<Database>((i) => DatabaseImpl()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context,args) => const SplashPage()),
    ModuleRoute('/login/', module: LoginModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ];
}