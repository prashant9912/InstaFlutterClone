import 'package:flutter/material.dart';

class Click extends StatelessWidget {
  Widget a;
  Click(this.a);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Center(
          child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.all(12),
                  child: a)),
        ));
  }
}