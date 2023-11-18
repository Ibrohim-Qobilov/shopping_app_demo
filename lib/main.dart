import 'package:hive_flutter/hive_flutter.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Center(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            textAlign: TextAlign.center,
            "Error\n${details.exception}",
          ),
        ),
      ),
    );
  };
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(const App());
}
