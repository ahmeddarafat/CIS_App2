
import 'package:flutter/material.dart';

import '../../../resources/api_demo.dart';

class ImageCard extends StatelessWidget {
  final int index;
  const ImageCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Image.asset(images[index]),
    );
  }
}
