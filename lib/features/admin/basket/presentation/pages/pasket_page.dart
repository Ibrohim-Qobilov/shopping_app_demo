import 'package:flutter/material.dart';
import 'package:shoping_app/features/admin/basket/presentation/pages/users_page.dart';
import 'package:shoping_app/features/common/presentation/pages/main_page.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        icon: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const MainPage()),
                (route) => false);
          },
          icon: const Icon(Icons.exit_to_app),
        ),
        title: 'Savatcha',
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AllUsersPage(),
                  ),
                );
              },
              icon: const Icon(Icons.person))
        ],
      ),
    );
  }
}
