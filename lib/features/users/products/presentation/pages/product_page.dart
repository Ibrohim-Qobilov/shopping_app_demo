import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:shoping_app/assets/constants/icons.dart';
import 'package:shoping_app/features/common/presentation/widgets/loading.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
import 'package:shoping_app/features/users/products/presentation/bloc/products_bloc.dart';
import 'package:shoping_app/features/users/products/presentation/pages/basket_page.dart';
import 'package:shoping_app/features/users/products/presentation/widgets/bottom_sheet.dart';

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
    _bloc
      ..add(const GetProducts(sort: "/"))
      ..add(const GetProductsByCoterory());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: _bloc,
      builder: (context, state) {
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BasketPage()));
                },
                icon: SvgPicture.asset(
                  AppIcons.basket,
                  height: 25,
                  width: 25,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: () {
                  _fitrModal(
                      context, state.productsByCotegoryData, state, _bloc);
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
          body: Builder(
            builder: (context) {
              if (state.productsByCotegoryStatus.isFailure) {
                return Container(
                  alignment: Alignment.center,
                  color: white,
                  child: const CupertinoActivityIndicator(color: black),
                );
              } else if (state.productsByCotegoryStatus.isSuccess) {
                var data = state.productsData;
                return GridView.builder(
                    itemCount: data.length,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                child: CupertinoActivityIndicator(),
              );
            },
          ),
        );
      },
    );
  }

  void _fitrModal(
      context, List<String> data, ProductsState state, ProductsBloc bloc) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Builder(
        builder: (context) {
          if (state.productsByCotegoryStatus.isFailure) {
            return const Loading();
          } else if (state.productsByCotegoryStatus.isSuccess) {
            var data = state.productsByCotegoryData;
            return ButtomSheet(
              data: data,
              bloc: _bloc,
            );
          }
          return const Center();
        },
      ),
    );
  }
}
