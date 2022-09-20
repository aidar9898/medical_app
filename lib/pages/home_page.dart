// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medical_app/util/category_card.dart';
import 'package:medical_app/util/doctor_card.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'салам,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'туугандар',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      )
                    ],
                  ),
                  // profile pucture
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person)),
                ],
              ),
            ),

            SizedBox(height: 25),
            // card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  // animation or picture
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_zpjfsp1e.json'),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  // how do you feel + get start
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ден соолугунуз кандай?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'сөзсүз турдө медициналык картанызды толтуруз',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Баштоо',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(height: 25),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'издөө'),
                ),
              ),
            ),
            SizedBox(height: 25),

            // horizontal listview -> categories: dendist surgeon etc..
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryCard(
                    categoryName: 'кардиология',
                    iconImagePath: 'assets/icons/cardiogram.png',
                  ),
                  categoryCard(
                    categoryName: 'даарыкана',
                    iconImagePath: 'assets/icons/medicine.png',
                  ),
                  categoryCard(
                    categoryName: 'анализ',
                    iconImagePath: 'assets/icons/syringe.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'докторлор тизмеси',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'баарың көрүү',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePath: 'assets/images/doctor5.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Turat A. ',
                  doctorProfession: 'педиатрия',
                ),
                DoctorCard(
                  doctorImagePath: 'assets/images/doctor1.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Eleonora A.',
                  doctorProfession: 'кардиология',
                ),
                DoctorCard(
                  doctorImagePath: 'assets/images/doctor2.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Eldiyar Eld.',
                  doctorProfession: 'терапевт',
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
