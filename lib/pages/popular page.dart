import 'package:flutter/material.dart';
import 'package:foodapp/shared/components/Text.dart';
import 'package:foodapp/shared/components/color.dart';

import 'home/homePage.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  double num=0;
  double price =12.8;
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: AppColor.primeColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height*.8,
              child:
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: height*.3,
                          width: width,
                          decoration: BoxDecoration(
                              color:AppColor.primeColor,
                              image:const DecorationImage(image:AssetImage('images/creole_rice.jpg'),fit: BoxFit.contain)
                          ),

                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.3),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: IconButton(onPressed: (){
                              Navigator.push( context, MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              },));

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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(child: BuildText(text: 'Creole Rice Side Dish Recipe',color: AppColor.secondColor,bold: true,size: 25,letterSpacing: 1,)),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: BuildText(wordSpacing: 4,
                        text: 'As a New Orleans native, jambalaya is a comfort food for me, as it is for most Louisianans. I’ve grown up eating it at nearly every big event, from family gatherings to game days. The big-batch, make-ahead dish lets you make a delicious meal for your guests without being tied to the stove and missing out on the party, which is why it’s one of my go-to meals whenever I’m entertaining a group of friends.Jambalaya means “all mixed up” or “jumbled,” and it is exactly that — a combination of West African, French, and Spanish influences that all came together in New Orleans. Although the base of celery, bell pepper, and onion — known as the “holy trinity” — is essential, the proteins vary depending on the season, from crawfish and shrimp to duck and other game meat. The jambalaya I’m sharing here stars smoky andouille sausage and chicken — a favorite duo of mine.',letterSpacing: 1,bold: true,color: Colors.black54,size: 20,maxLines: 50,),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                 CircleAvatar(
                   backgroundColor: AppColor.secondColor,
                   radius: 27,
                   child: IconButton(onPressed: (){
                     setState(() {
                       num--;
                     });
                   },color: AppColor.primeColor, icon: const Icon(Icons.remove),),
                 ),
                  SizedBox(
                    width: width*.07,
                  ),
                  BuildText(text: '$price x $num',bold: true,size: 20,),
                  SizedBox(
                    width: width*.07,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColor.secondColor,
                    radius: 27,
                    child: IconButton(onPressed: (){
                      setState(() {
                        num++;
                      });
                    },color: AppColor.primeColor, icon: const Icon(Icons.add),),
                  ),


                ],
              ),
            ),
            Container(
              height: height*.0611,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height*.1,
                    width: width*.17,
                    child: Icon(Icons.favorite,
                      color: AppColor.secondColor,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    height: height*.1,
                    width: width*.7,
                    decoration: BoxDecoration(
                      color: AppColor.secondColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: BuildText(text: num > 0 ? '\$ ${(price*num).toStringAsFixed(2)} | Add to cart' : 'add some meals ',color: AppColor.primeColor,size: 20)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
