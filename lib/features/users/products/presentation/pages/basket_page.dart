import 'package:hive_flutter/hive_flutter.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/presentation/widgets/basket_card.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Savatcha',
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
