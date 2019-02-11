import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowheight = 100.0;
final _borderRadius = BorderRadius.circular(_rowheight / 2);

class Category extends StatelessWidget {
  final ColorSwatch color;
  final String name;
  final IconData iconLocation;

  Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowheight,
        child: InkWell(
          borderRadius: _borderRadius,
          splashColor: color,
          highlightColor: color,
          onTap: () {
            print('My Component');
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(iconLocation,
                  size: 60.0,),
                ),
                Center(
                  child: Text(name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
