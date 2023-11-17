import 'package:shoping_app/utils/export_packages.dart.dart';

class WSizedBox extends StatelessWidget {
  final double height;
  const WSizedBox({
    super.key,
    this.height = 5,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
