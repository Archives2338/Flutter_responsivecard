import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveCards extends StatelessWidget {
  const ResponsiveCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color(0xFF212239),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Card',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (widget, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: widget,
                  );
                },
                child: orientation == Orientation.portrait
                    ? ListView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.00, vertical: 10),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Center(
                            child: _CardItem(
                              color: Colors
                                  .primaries[index % Colors.primaries.length],
                            ),
                          );
                        },
                      )
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Center(
                            child: _CardItem(
                              color: Colors
                                  .primaries[index % Colors.primaries.length],
                            ),
                          );
                        },
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final Color color;
  const _CardItem({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.5),
                  color,
                ],
              ),
              borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("S/5,985"),
                Spacer(),
                Text('4020 **** **** 5205'),
                Text('archives'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
