import 'package:flutter/material.dart';
import 'package:wadada/common/const/colors.dart';

class SingleRecord extends StatelessWidget{
  const SingleRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffF6F4E9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(1, 2),
            ),
          ],
        ),
        width: 400,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
          child: Column(
            children: const [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('총 운동거리',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        SizedBox(height: 20),
                        Text('3000 km',
                          style: TextStyle(
                            color: GREEN_COLOR,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('평균 스피드',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        SizedBox(height: 20),
                        Text('290 kcal',
                          style: TextStyle(
                            color: GREEN_COLOR,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('평균 페이스',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        SizedBox(height: 20),
                        Text('1.7 km / h',
                          style: TextStyle(
                            color: GREEN_COLOR,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('평균 심박수',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        SizedBox(height: 20),
                        Text('120 hz',
                          style: TextStyle(
                            color: GREEN_COLOR,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}