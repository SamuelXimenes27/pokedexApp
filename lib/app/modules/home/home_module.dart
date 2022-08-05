import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/home_widget.dart';
import '../home/home_store.dart';

class HomePageModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomePageStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const HomePageWidget()),
  ];
}
