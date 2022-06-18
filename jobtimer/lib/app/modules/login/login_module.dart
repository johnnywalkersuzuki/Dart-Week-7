
import 'package:flutter_modular/flutter_modular.dart';
import 'package:jobtimer/app/modules/login/controller/login_controller.dart';
import 'package:jobtimer/app/modules/login/login_page.dart';
import 'package:jobtimer/app/modules/splash/splash_page.dart';
import 'package:jobtimer/app/services/auth/auth_service.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class LoginModule extends Module{
  @override
  List<Bind> get binds => [
    // Bloc não pode ser um bind normal, mas sim BlocBind
    // Aqui pois só é acessado somente aqui
    BlocBind.lazySingleton((i) => LoginController(authService: i())) //AuthService ->AppModule
  ];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute('/', 
      child: (context, args) =>  LoginPage(
        controller: Modular.get(),
      ),
    ),
  ];
}