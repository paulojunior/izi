import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String label;
  final String imgUrl;

  MenuItem({required this.label, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => () {},
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black12,
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  this.imgUrl,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              this.label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
