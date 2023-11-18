import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/assets/colors/colors.dart';
import 'package:shoping_app/features/admin/basket/presentation/bloc/basket_bloc.dart';
import 'package:shoping_app/features/admin/basket/presentation/widgets/user_card.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';

class AllUsersPage extends StatefulWidget {
  const AllUsersPage({super.key});

  @override
  State<AllUsersPage> createState() => _AllUsersPageState();
}

class _AllUsersPageState extends State<AllUsersPage> {
  late BasketBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of(context);
    _bloc.add(const GetUsers());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Userlar'),
      body: BlocBuilder<BasketBloc, BasketState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state is BasketError) {
            return const Center(
              child: Text('error'),
            );
          } else if (state is BasketLoading) {
            return const Center(
              child: CupertinoActivityIndicator(
                color: white,
              ),
            );
          } else if (state is BasketLoaded) {
            var data = state.data;
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return UserCard(data: data[index]);
              },
            );
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
}
