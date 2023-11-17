import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/presentation/bloc/products_bloc.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => ProductsBloc(ProductsDataSources()))
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Shop app',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const MainPage(),
            ));
      },
    );
  }
}
