import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffdfdfdf),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tập thể dục sáng',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff4b4b4b),
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.delete_outline,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
