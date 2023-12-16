import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:wellbeing_app/home/product.dart';

class DefaultHome extends StatefulWidget {
  const DefaultHome({super.key});

  @override
  State<DefaultHome> createState() => _DefaultHomeState();
}

class _DefaultHomeState extends State<DefaultHome> {

List<Product> productList = [
  Product('assets/meditate.jpg', 'Meditation'),
  Product('assets/podcast.jpg', 'Podcast'),
  Product('assets/journal.jpg', 'Journaling'),
  Product('assets/soundscape.jpg', 'Soundscape'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        margin: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 10.0),
        child:SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                      child: Text('Hey Merin! Listen ,',
                      style: TextStyle(
                        fontSize: 18 ,fontWeight: FontWeight.bold,
                      ),),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 30.0,
                      child: Text('SMALL STEPS ARE STILL PROGRESS',
                        style: TextStyle(
                          fontSize: 18 ,fontWeight: FontWeight.bold,
                          fontFamily: 'PlayfairDisplay',
                        ),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 350 ,
                      child: ScrollSnapList(
                          itemBuilder: _buildListItem,
                          itemCount: productList.length,
                          itemSize: 250,
                          onItemFocus: (index){} ,
                      dynamicItemSize: true,)
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child:ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: Column(
                             children: [
                            Image.asset('assets/self esteem.jpg', height: 100,
                              width: 100, fit: BoxFit.cover,),
                            const SizedBox(height: 10,),
                            Text('Self esteem', style: TextStyle(
                              fontWeight: FontWeight.bold,),),
                            const SizedBox(height: 10,),

                                                  ],
                            ),
                          )
                        ),
                        Card(
                          child:ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: Column(
                              children: [
                                Image.asset('assets/sleep.jpg', height: 100,
                                  width: 100, fit: BoxFit.cover, ),
                                const SizedBox(height: 10,),
                                Text('Sleep', style: TextStyle(
                                  fontWeight: FontWeight.bold,),),
                                const SizedBox(height: 10,),

                              ],
                            ),
                          )
                        ),
                        Card(
                          child:ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: Column(
                              children: [
                                Image.asset('assets/search.jpg', height: 100,
                                  width: 100, fit: BoxFit.cover,),
                                const SizedBox(height: 10,),
                                Text('Discover', style: TextStyle(
                                  fontWeight: FontWeight.bold,),),
                                const SizedBox(height: 10,),

                              ],
                            ),
                          )
                        ),

                      ],
                    )
                  ],
                ),
          ),
        ),
        ),
      );
  }

  Widget _buildListItem(BuildContext context , int index){
    Product product = productList [index];
    return SizedBox(
      width: 250,
      height: 350,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Image.asset(product.imagePath, fit: BoxFit.cover,
              height:250 , width: 210 ,),
              const SizedBox(height: 15,),
              Text(product.title, style: const TextStyle( fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
