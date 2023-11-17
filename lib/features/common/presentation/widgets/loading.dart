import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping_app/assets/colors/colors.dart';
import 'package:shoping_app/assets/constants/icons.dart';
import 'package:shoping_app/features/common/presentation/pages/main_page.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
            onPressed: () {},
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
      body: const Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
