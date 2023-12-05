import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/relevance_books_list_view.dart';
import 'package:flutter/material.dart';

class RelevanceBooksSection extends StatelessWidget {
  const RelevanceBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const RelevanceBooksListView(),
        // const SizedBox(height: 16),
      ],
    );
  }
}
