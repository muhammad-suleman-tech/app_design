import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // AppBar
        appBar: AppBar(
          leading: const Icon(Icons.menu,color: Colors.black,),
          title: const Text("./appbar",style: TextStyle(fontSize: 22),),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20,top: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: IconButton(onPressed: (){},
                  icon: const Image(image: AssetImage("assets/images/mun.png"))
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
               Text("Hey Let's Code with Teni",style: GoogleFonts.aBeeZee(fontSize: 16),),
               Text("Explore Courses",style: GoogleFonts.aBeeZee(fontSize: 30,fontWeight: FontWeight.bold),),
               const SizedBox(height: 15,),
              // Search Box
               Container(
                 decoration: const BoxDecoration(
                   border: Border(left: BorderSide(width: 4)),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 3),
                       child: SizedBox(
                         width: 200,
                         height: 45,
                         child: TextFormField(
                           cursorColor: Colors.black,
                           decoration: InputDecoration(
                             hintText: "Search...",
                             hintStyle: GoogleFonts.aBeeZee(color: Colors.black.withOpacity(0.2),fontSize: 24,fontWeight: FontWeight.bold),
                             border: const OutlineInputBorder(
                               borderSide: BorderSide.none,
                             )
                           ),
                         ),
                       ),
                     ),
                    const Icon(Icons.mic)
                   ],
                 ),
               ),
                const SizedBox(height: 20,),

                SizedBox(
                  height: 45,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 170,
                        child: Row(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black
                              ),
                              child: const Center(
                                child: Text("JS",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            const Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text("Java Script",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                    Text("10 Lessons",style: TextStyle(fontSize: 14,overflow: TextOverflow.ellipsis),)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                      SizedBox(
                        height: 45,
                        width: 170,
                        child: Row(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black
                              ),
                              child: const Center(
                                child: Text("JS",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            const Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text("Java Script",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                    Text("10 Lessons",style: TextStyle(fontSize: 14,overflow: TextOverflow.ellipsis),)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                      SizedBox(
                        height: 45,
                        width: 170,
                        child: Row(
                          children: [
                            Container(
                              height: 45,width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black
                              ),
                              child: const Center(
                                child: Text("JS",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            const Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text("Java Script",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                    Text("10 Lessons",style: TextStyle(fontSize: 14,overflow: TextOverflow.ellipsis),)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.1)
                        ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Icon(Icons.bookmark,color: Colors.grey,)),
                              Flexible(child: Image(image: AssetImage("assets/images/dashboard.png"),height: 100,width: 100,)),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text("Web Development",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16) ),
                          SizedBox(height: 3,),
                          Text("20 Lessons",style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.1)
                                ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(child: Icon(Icons.bookmark,color: Colors.grey,)),
                                      Flexible(child: Image(image: AssetImage("assets/images/java.png"),height: 80,width: 100,)),
                                    ],
                                  ),
                                  Text("Android",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold) ),
                                  SizedBox(height: 5,),
                                  Text("30 Lessons",style: TextStyle(fontSize:12,)),
                                ],
                              ),
                            ),
                           const SizedBox(height: 10,),
                            SizedBox(
                              height: 35,
                              width: double.infinity,
                              child: OutlinedButton(
                                  onPressed: (){},
                                  child: const Text("Next",style: TextStyle(color: Colors.black),)
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              const SizedBox(height: 10,),
              const Text("Top Courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
                // Top Courses Card Section
                SizedBox(
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 355,
                        height: 240,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)
                            ),
                            child: Column(
                              children: [
                                const Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(child: Text("Flutter Crash Course",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                    Flexible(child: Image(image: AssetImage("assets/images/laptop.png"),height: 150,width: 150,))
                                  ],
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.white,
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Center(child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.play_arrow,size: 30,),
                                        ))
                                    ),
                                   const SizedBox(width: 10,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("3 Sections",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("Programming Language"),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 355,
                        height: 240,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.1)
                            ),
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(child: Text("HTML/CSS\nJava Script",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                    Flexible(child: Image(image: AssetImage("assets/images/laptop.png"),height: 150,width: 150,))
                                  ],
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.white,
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Center(child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.play_arrow,size: 30,),
                                        ))
                                    ),
                                    const SizedBox(width: 10,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("10 Sections",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("Programming Language"),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 355,
                        height: 240,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.1)
                            ),
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(child: Text("Python Programming",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                    Flexible(child: Image(image: AssetImage("assets/images/laptop.png"),height: 150,width: 150,))
                                  ],
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.white,
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Center(child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.play_arrow,size: 30,),
                                        ))
                                    ),
                                    const SizedBox(width: 10,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("3 Sections",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("Programming Language"),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),


        ),
      ),
    );
  }
}
