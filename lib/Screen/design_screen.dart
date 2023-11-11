import 'package:flutter/material.dart' hide BoxShadow,BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../Color/color.dart';

class UIdesignScreen extends StatelessWidget {
  const UIdesignScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE7ECEf),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:const Color(0xffE7ECEf),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:const [
                              BoxShadow(
                                color: Color(0xffA7A9AF),
                                offset: Offset(7, 7),
                                blurRadius: 5,
                                spreadRadius: 1,
                                inset:true

                              ),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-7, -7),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  inset:true
                              )
                            ]
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 90,
                                  
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(20)
                                  ),

                                  child:const Center(
                                    child: Text("19.21",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                    ),),
                                  ),
                                ),
                                const SizedBox(width: 100),
                                const Text(".Pm\n.Current time",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width*.5,
                              decoration: BoxDecoration(
                                color: Color(0xffE7ECEF),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffA7A9AF),
                                    offset: Offset(6, 7),
                                    blurRadius: 5,
                                    spreadRadius: 1
                                  ),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-8, -8),
                                      blurRadius: 5,
                                      spreadRadius: 1
                                  )
                                ]
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 30,),
                                  RichText(text: TextSpan(
                                    text: 'G',style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,color: Colors.blue
                                  ),
                                    children: [
                                      const TextSpan(
                                      text: 'O',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,color: Colors.red
                                      ),
                                      ),
                                      TextSpan(
                                        text: 'O',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,color: Colors.yellow.shade800
                                      ),
                                      ),
                                      TextSpan(
                                        text: 'G',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,color: Colors.blue.shade300
                                      ),
                                      ),
                                      const TextSpan(
                                        text: 'L',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,color: Colors.blue
                                      ),
                                      ),
                                      const TextSpan(
                                        text: 'E',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,color: Colors.red
                                      ),
                                      ),

                                    ]
                                  )),
                                  const SizedBox(width: 25,),
                                  const RotatedBox(
                                    quarterTurns:3,
                                    child: Divider(
                                      endIndent: 3,
                                      indent: 3,
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(Icons.search,size: 40,)
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width*.35,
                              decoration: BoxDecoration(
                                color: Color(0xffE7ECEF),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const[
                                  BoxShadow(
                                    color: Color(0xffA7A9AF),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset:  Offset(6, 7)
                                  ),
                                  BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset:  Offset(-8, -8)
                                  ),
                                ]
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Icon(Icons.phone,size: 28, color: Colors.white,)
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.red,
                                      child: Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Icon(Icons.email_outlined,size: 28, color: Colors.white,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Palette.boxDecoration,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const[
                              BoxShadow(
                                color: Palette.boxShadow1,
                                offset: Offset(6, 7),
                                blurRadius: 5,
                                spreadRadius: 1
                              ),
                              BoxShadow(
                                  color: Palette.boxShadow2,
                                  offset: Offset(-8, -8),
                                  blurRadius: 5,
                                  spreadRadius: 1
                              )
                            ]

                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 40,
                                child: Padding(padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('Image/aman.jpeg'),
                                ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Aman Ullah Akhand',style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold
                                  ),),
                                  Text('Mobile App Developer',style: TextStyle(
                                      fontSize: 10),),
                                ],
                              ),
                              const SizedBox(width: 25,),
                              const RotatedBox(
                                  quarterTurns: 3,
                                child: Divider(
                                  thickness: 2,
                                  indent: 15,
                                  endIndent: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 7,),
                              const Icon(Icons.notifications,size: 40,)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Palette.boxDecoration,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow:const [
                                      BoxShadow(
                                        offset: Offset(4,4),
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                        color: Palette.boxShadow1
                                      ),
                                      BoxShadow(
                                          offset: Offset(-4,-4),
                                          blurRadius: 4,
                                          spreadRadius: 1,
                                          color: Palette.boxShadow2
                                      )
                                    ]
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Text('O Je Mane Na Mana',style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 15
                                        ),),
                                        const Text('Robindro Songit',style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 15
                                        ),),
                                        const SizedBox(height: 7,),
                                        const Text('Suvro Sarkar',style: TextStyle(fontSize: 10),),
                                        Slider(value: .3, onChanged: (va){},
                                          inactiveColor: Colors.green,
                                          activeColor: Colors.black,
                                        ),
                                        const Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.skip_previous),
                                            Icon(Icons.pause),
                                            Icon(Icons.skip_next),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height:20 ,),
                                Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Palette.boxDecoration,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow:const [
                                        BoxShadow(
                                            offset: Offset(4,4),
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                            color: Palette.boxShadow1
                                        ),
                                        BoxShadow(
                                            offset: Offset(-4,-4),
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                            color: Palette.boxShadow2
                                        )
                                      ]
                                  ),
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleAvatar(
                                              radius: 23,
                                              backgroundColor: Colors.lightBlue,
                                              child: Center(
                                                child: Icon(Icons.wifi,size: 40,color: Colors.white,),
                                              ),
                                            ),
                                            Icon(Icons.bluetooth,size: 40,)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.notifications_on_sharp,size:40,color: Colors.red,),
                                            Icon(Icons.watch_later_outlined,size: 40,)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 85,
                                    width: MediaQuery.of(context).size.width*.45,
                                    decoration: BoxDecoration(
                                      color: Palette.boxDecoration,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const[
                                        BoxShadow(
                                          color: Palette.boxShadow1,
                                          offset: Offset(6, 7),
                                          blurRadius: 5,spreadRadius: 1
                                        ),
                                        BoxShadow(
                                            color: Palette.boxShadow2,
                                            offset: Offset(-8, -8),
                                            blurRadius: 5,spreadRadius: 1
                                        ),
                                      ]
                                    ),
                                    child: Center (
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    'Image/cloudy.jpeg',
                                                    fit: BoxFit.cover, // You can adjust the BoxFit based on your needs
                                                  ),
                                                ),
                                              ),
                                              Text('30c\nSebagian Cerah',style: TextStyle(fontSize: 12),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
