import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping_app/assets/constants/icons.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
import 'package:shoping_app/features/users/products/presentation/bloc/products_bloc.dart';

import 'package:shoping_app/features/users/products/presentation/widgets/card_widget.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late ProductsBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of(context);
    _bloc.add(const GetProducts());

    super.initState();
  }

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
            icon: const Icon(Icons.exit_to_app)),
        title: 'Products',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.basket,
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ),
          ),
          IconButton(
            onPressed: () {
              _fitrModal(context);
            },
            icon: SvgPicture.asset(
              AppIcons.filter,
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state is ProductsError) {
            return const Center(
              child: Text('error'),
            );
          } else if (state is ProductsLoading) {
            return const Center(
              child: CupertinoActivityIndicator(
                color: white,
              ),
            );
          } else if (state is ProductsLoaded) {
            var data = state.data;
            return GridView.builder(
                itemCount: data.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardWidget(
                      data: data[index],
                    ),
                  );
                });
          }
          return const Center(
            child: CupertinoActivityIndicator(
              color: black,
            ),
          );
        },
      ),
    );
  }

  void _fitrModal(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                );
              },
            ));
  }
}

//List<String> category