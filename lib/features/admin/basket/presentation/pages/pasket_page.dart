import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shoping_app/features/admin/basket/presentation/pages/users_page.dart';
import 'package:shoping_app/features/common/presentation/pages/main_page.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/presentation/widgets/basket_card.dart';

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
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: ProductsDataSources().box.listenable(),
        builder: (context, box, child) {
          return GridView.builder(
              itemCount: box.values.length,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BarketCardWidget(
                    box: box.getAt(index),
                  ),
                );
              });
        },
      ),
    );
  }
}
