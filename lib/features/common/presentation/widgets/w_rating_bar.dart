import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class WRatingBar extends StatelessWidget {
  final double rating;
  const WRatingBar({
    super.key,
    this.rating = 2,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: 15.0,
      direction: Axis.horizontal,
    );
  }
}