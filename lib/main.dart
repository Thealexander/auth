import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_shop/config/config.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  await Environment.initEnvironment();
  runApp(const ProviderScope(child: MainApp()));

  /* para el splsh
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //or
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitilized());

  //agregar donde sea neceairo para detener:
  FlutterNativeSplash.remove() 
  */
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
