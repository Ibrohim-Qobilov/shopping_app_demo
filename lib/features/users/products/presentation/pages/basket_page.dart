import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
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
      body: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: BarketCardWidget(),
        );
      }),
    );
  }
}
