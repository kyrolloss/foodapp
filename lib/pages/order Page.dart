import 'package:flutter/material.dart';
import 'package:foodapp/pages/home/homePage.dart';
import 'package:foodapp/shared/components/Text.dart';
import 'package:foodapp/shared/components/color.dart';


class OrderPage extends StatefulWidget {

  const OrderPage({Key? key}) : super(key: key);


  @override
  State<OrderPage> createState() => _OrderPageState();


}

class _OrderPageState extends State<OrderPage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    GradientTransform transform = const GradientRotation(1000);


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height * .35,
                        decoration: BoxDecoration(
                            color: AppColor.primeColor,
                            image: const DecorationImage(
                                image: AssetImage('images/biriani.jpg'),
                                fit: BoxFit.fitWidth)),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: IconButton(
                              onPressed: (){
                            Navigator.push( context, MaterialPageRoute(builder: (context) {
                              return const HomePage();
                            },
                            ));

                          }, icon: const Icon(Icons.arrow_back_ios_new_sharp,
                              color: Colors.black)),

                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.3),
                              borderRadius: BorderRadius.circular(50)

                          ),
                            child:
                            IconButton(onPressed: (){

                            }, icon: const Icon(Icons.shopping_cart,
                                color: Colors.black),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: height * .02,
                      ),
                      BuildText(
                        text: 'Biriani',
                        color: AppColor.secondColor,
                        size: 35,
                        bold: true,
                        letterSpacing: 1,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          BuildText(
                            text: '4.5      1287 commens',
                            size: 15,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * .02,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.orangeAccent,
                                radius: 10,
                              ),
                              SizedBox(
                                width: width * .009,
                              ),
                              BuildText(
                                text: 'normal',
                                color: Colors.black,
                                size: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: width * .005,
                              ),
                              BuildText(
                                text: '1.7 km',
                                color: Colors.black,
                                size: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          SizedBox(
                            height: height * .07,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                color: AppColor.secondColor,
                              ),
                              SizedBox(
                                width: width * .009,
                              ),
                              BuildText(
                                text: '32 m',
                                color: Colors.black,
                                size: 12,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      BuildText(
                          text: 'introduce',
                          color: Colors.black87,
                          size: 35,
                          bold: true,
                          letterSpacing: 1),
                      SizedBox(
                        height: height * .018,
                      ),

                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                            width: width,
                            height: height * .08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  colors: [
                                    AppColor.primeColor,
                                    AppColor.secondColor,
                                    AppColor.secondColor,
                                    AppColor.primeColor
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  transform: transform),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child:
                                  Container(
                                    height: height * .055,
                                    width: width * .35,
                                    decoration: BoxDecoration(
                                      color: AppColor.primeColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                num--; // تنقيص القيمة عند النقر على الأيقونة "-"
                                              });
                                            },
                                            icon: const Icon(Icons.remove),
                                            iconSize: 20,
                                          ),
                                          BuildText(
                                            text: '$num',
                                            size: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                num++; // زيادة القيمة عند النقر على الأيقونة "+"
                                              });
                                            },
                                            icon: const Icon(Icons.add),
                                            iconSize: 20,
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                                GestureDetector(
                                  onTap: (

                                  ){
                                  },
                                  child: Container(
                                    height: height * .055,
                                    width: width * .45,
                                    decoration: BoxDecoration(
                                      color: AppColor.primeColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                         BuildText(text:num > 0 ? '\$ ${num*10} Add to cart' : ' add some meals',bold: true,)

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
