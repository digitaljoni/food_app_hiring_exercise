import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/models/restaurant.dart';

class Productinfor extends StatelessWidget {
  Productinfor({
    Key key,
    this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(32.0, 373.0),
          child:
              // Adobe XD layer: '$30.00' (text)
              Text(
            '${restaurant.aveerageCost}',
            style: TextStyle(
              fontFamily: 'Montserrat-SemiBold',
              fontSize: 24,
              color: const Color(0xff365eff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(32.0, 407.0),
          child:
              // Adobe XD layer: 'Chicken Hamburger' (text)
              Text(
            '${restaurant.name}',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              color: const Color(0xff373737),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(65.0, 80.0),
          child:
              // Adobe XD layer: 'Image' (group)
              Stack(
            children: <Widget>[
              // Adobe XD layer: 'Mask' (shape)
              Container(
                width: 245.0,
                height: 245.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(122.5, 122.5)),
                  color: const Color(0xffd8d8d8),
                ),
              ),
              // Adobe XD layer: 'Image' (group)
              Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Mask' (shape)
                  Container(
                    width: 245.0,
                    height: 245.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(122.5, 122.5)),
                      color: const Color(0xffd8d8d8),
                      image: DecorationImage(
                        image: NetworkImage('${restaurant.thumb}'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(307.0, 16.0),
          child:
              // Adobe XD layer: 'Btn heart' (group)
              Stack(
            children: <Widget>[
              // Adobe XD layer: 'Rectangle' (shape)
              Container(
                width: 72.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32.0),
                    bottomLeft: Radius.circular(32.0),
                  ),
                  color: const Color(0xff99adff),
                ),
              ),
              Transform.translate(
                offset: Offset(24.0, 12.0),
                child:
                    // Adobe XD layer: 'Heart' (group)
                    Stack(
                  children: <Widget>[
                    // Adobe XD layer: 'Shape' (shape)
                    SvgPicture.string(
                      _svg_qqrib0,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(176.0, 8.0),
          child:
              // Adobe XD layer: 'Rectangle' (shape)
              Container(
            width: 24.0,
            height: 4.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: const Color(0xff365eff),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(32.0, 449.0),
          child:
              // Adobe XD layer: 'Fresh hamburger with' (text)
              SizedBox(
            width: 215.0,
            height: 54.0,
            child: Text(
              '${restaurant.address}',
              style: TextStyle(
                fontFamily: 'Montserrat-Regular',
                fontSize: 12,
                color: const Color(0xff656565),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_qqrib0 =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(3.0, 4.5)" d="M 13.5 0 C 11.89000034332275 0 10.00800037384033 1.825000047683716 9 3 C 7.992000102996826 1.825000047683716 6.110000133514404 0 4.5 0 C 1.651000022888184 0 0 2.221999883651733 0 5.050000190734863 C 0 8.182999610900879 3 11.5 9 15 C 15 11.5 18 8.25 18 5.25 C 18 2.421999931335449 16.34900093078613 0 13.5 0 Z" fill="#365eff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
