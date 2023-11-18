import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/presentation/bloc/products_bloc.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class ButtomSheet extends StatefulWidget {
  final List<String>? data;
  final ProductsBloc? bloc;
  const ButtomSheet({
    Key? key,
    this.data,
    this.bloc,
  }) : super(key: key);

  @override
  State<ButtomSheet> createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheet> {
  List sortList = [
    "/category/electronics",
    "/category/jewelery",
    "/category/electronics",
    "/category/jewelery",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: InkWell(
                  onTap: () {
                    String listCategories = widget.data![index];
                    ProductsDataSources()
                        .getproductsByFilterSreach(listCategories);
                    print(listCategories);
                    widget.bloc!.add(GetProducts(sort: sortList[index]));

                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.data![index],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'bu yerda sortlash faqat 2ta knopkada ishlaydi sababi kalit so\'zlarini topa olmadim',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.red),
          ),
        ),
      ],
    );
  }
}
