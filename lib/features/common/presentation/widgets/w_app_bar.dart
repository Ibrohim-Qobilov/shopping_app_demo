import 'package:shoping_app/utils/export_packages.dart.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final Widget? icon;
  final List<Widget>? actions;
  const AppBarWidget({
    required this.title,
    this.actions,
    this.icon,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: icon,
      iconTheme: const IconThemeData(color: black),
      elevation: 0,
      centerTitle: true,
      backgroundColor: white,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
      ),
      actions: actions,
    );
  }
}
