import 'package:app_financeiro/app/modules/cadastro/cadastro_module.dart';
import 'package:app_financeiro/app/modules/login/login_controller.dart';
import 'package:app_financeiro/app/repository/usuario.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_financeiro/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i.get<UsuarioRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
        Router('/cadastro', module: CadastroModule()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
