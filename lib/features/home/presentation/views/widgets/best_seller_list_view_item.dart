import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(Assets.assetsImagesTestImage),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: Assets.assetsFontsGTSectraFineRegular,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'J.K. Rowing',
                  style: Styles.textStyle14.copyWith(
                    color: Styles.textColor,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
