import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({
    required this.item,
    required this.handleDelete,
    super.key,
  });

  var item;
  final Function handleDelete;

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff4b4b4b),
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () async {
                bool confirm = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Confirm Delete'),
                        actions: [
                          TextButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                          TextButton(
                            child: Text('Delete'),
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ],
                      ),
                    ) ??
                    false;

                if (confirm) {
                  handleDelete(item.id);
                }
              },
              child: const Icon(
                Icons.delete_outline,
                color: Color(0xff4b4b4b),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
