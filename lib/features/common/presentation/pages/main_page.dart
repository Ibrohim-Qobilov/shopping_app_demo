import 'package:shoping_app/features/admin/basket/presentation/pages/pasket_page.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_button.dart';
import 'package:shoping_app/features/users/products/presentation/pages/product_page.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Shopping time"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WButton(
              color: white,
              border: Border.all(color: black),
              height: 40,
              width: 200,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const BasketPage()),
                    (route) => false);
              },
              text: "Admin",
              textStyle: const TextStyle(
                color: black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            WButton(
              border: Border.all(color: black),
              color: white,
              height: 40,
              width: 200,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const ProductPage()),
                    (route) => false);
              },
              text: "Foydalanuvchilar",
              textStyle: const TextStyle(
                color: black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
