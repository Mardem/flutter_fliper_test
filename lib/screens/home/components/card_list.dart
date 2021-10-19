import 'package:fliper/config/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  final double? value;

  const CardList({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: ScreenUtil().setHeight(40),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: 50,
              margin: EdgeInsets.only(bottom: 3, right: 10),
              decoration: BoxDecoration(
                color: value! > 0
                    ? Color.fromRGBO(202, 248, 230, 0.6019607843137255)
                    : Color.fromRGBO(248, 202, 202, 0.6039215686274509),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                value! > 0 ? Icons.arrow_upward : Icons.arrow_downward,
                size: 17,
                color: value! > 0
                    ? Color.fromRGBO(43, 156, 109, 1.0)
                    : Color.fromRGBO(156, 43, 43, 1.0),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City Bank',
                    style: GoogleFonts.montserrat(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'City Bank',
                    style: GoogleFonts.montserrat(
                        color: Colors.black87,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    value! > 0 ? 'Entrada' : 'Saída',
                    style: GoogleFonts.montserrat(
                      color: Colors.black87,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    AppHelpers.formatCurrency(value),
                    style: GoogleFonts.montserrat(
                      color: value! > 0
                          ? Color.fromRGBO(43, 156, 109, 1.0)
                          : Color.fromRGBO(156, 43, 43, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
