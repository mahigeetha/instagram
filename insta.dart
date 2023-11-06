import 'package:flutter/material.dart';
import 'package:instagram/sam.dart';
class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_rounded,color: Colors.black,),
        title: Text('cristiano',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.notifications,color: Colors.blue,),
          ),
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder:( BuildContext context,bool innerBoxIsScrolled){
            return[
              SliverAppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 340,
                bottom: TabBar(

                    tabs: [
                      Tab(icon: Icon(Icons.grid_on_sharp,color: Colors.black,),),
                      Tab(icon: Icon(Icons.video_collection_outlined,color: Colors.black,),),
                      Tab(icon: Icon(Icons.people_sharp,color: Colors.black,),)

                    ]),
                title: Column(

                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                            height: 100,
                            width: 95,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(image: AssetImage('assets/ronaldo.jpg'),
                                      fit: BoxFit.cover)

                              ),
                            )
                        ),

                        Column(
                          children: [
                            Text('3,525',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('Posts',style:TextStyle(color: Colors.black,fontSize: 14),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('597M',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              Text('Followers',style:TextStyle(color: Colors.black,fontSize: 14),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('563',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              Text('Following',style:TextStyle(color: Colors.black,fontSize: 14),)
                            ],
                          ),
                        ),


                      ],
                    ),
                    RichText(

                        text: TextSpan(style: TextStyle(color: Colors.black,fontSize: 17),
                            children: <TextSpan>[
                              TextSpan(text: 'Cristiano Ronaldo                                              ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))

                            ])),
                    RichText(text: TextSpan(style: TextStyle(color: Colors.black,fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(text: 'join my NFT journey on ',style: TextStyle(color: Colors.black,)),
                          TextSpan(text: '@Biance.',style: TextStyle(color: Colors.blue,)),
                          TextSpan(text: 'Click the link below to get started.                                                                                                                                     ',style: TextStyle(color: Colors.black,)),


                        ])),
                    Row(
                      children: [
                        Icon(Icons.link_sharp,color: Colors.blue,),


                        RichText(text: TextSpan(style: TextStyle(color: Colors.black,fontSize: 15),
                            children: <TextSpan>[

                              TextSpan(text: 'ter.li/ForeverCR7',style: TextStyle(color: Colors.blue,)),

                            ])),
                      ],
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(image: AssetImage('assets/ronaldo.jpg'),
                                        fit: BoxFit.fill)
                                ),
                              ),
                            ),


                            RichText(text: TextSpan(style: TextStyle(color: Colors.black,fontSize: 14),
                                children: <TextSpan>[
                                  TextSpan(text: 'Followed by ',style: TextStyle(color: Colors.black,)),
                                  TextSpan(text: 'jio',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),


                                ])),


                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),

                                ),
                                child: Row(
                                  children: [
                                    Text('   Followers',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                                    Icon(Icons.arrow_drop_down,size: 30,color: Colors.black,),
                                  ],


                                ),


                              ),
                            ),
                            Container(
                              height: 40,
                              width: 110,

                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: null,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text("Message",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                            ),

                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 50,

                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),

                              ),
                              child: Icon(Icons.people_sharp,color: Colors.black,),


                            ),

                          ],
                        )
                      ],
                    ),










                  ],
                ),







              )
            ];
          },
          body:
          TabBarView(children:[
            Container(
              height: 100,

              color: Colors.orange,
              child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1,
                    crossAxisSpacing: 1,



                  ),itemCount: lis.length,

                  itemBuilder: (BuildContext con,Index){

                    return Container(
                        height: 100,
                        width: 200,
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(lis[Index].image),
                                  fit: BoxFit.cover)
                          ),
                        )
                    );


                  }
              ),
            ),
            Container(
              height: 100,
              width: 200,

              child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1,
                    crossAxisSpacing: 1,



                  ),itemCount: 30,

                  itemBuilder: (BuildContext con,Index){

                    return Container(
                        height: 100,
                        width: 200,
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/ro4.jpg'),
                                  fit: BoxFit.cover)
                          ),
                        )
                    );
                  }
              ),
            ),
            Container(
              height: 100,
              width: 200,

              child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1,
                    crossAxisSpacing: 1,



                  ),itemCount: 30,

                  itemBuilder: (BuildContext con,Index){

                    return Container(
                        height: 100,
                        width: 200,
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/ro3.jpg'),
                                  fit: BoxFit.cover)
                          ),
                        )
                    );


                  }



              ),
            )
          ]
          ),




        ),
      ),


    );
  }
}


