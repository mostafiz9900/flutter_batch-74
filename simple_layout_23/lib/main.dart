import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blueGrey
    ),
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home page'.toUpperCase()),),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Stack(
          children: [
             Container(
               width: double.infinity,
               height: 200.0,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage('data:image/jpeg;base64,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'),


                   fit: BoxFit.cover
                 ),

               ),
             ),
         Positioned(
           top: 20.0,
           left: 10.0,
           
           child: Text('Bangaldeshi Burgare',style: TextStyle(color: Colors.white,),),
           
           ),
           Positioned(
           bottom: 20.0,
           left: 10.0,
           
           child: Icon(
              Icons.shopping_cart,color: Colors.red,size: 30.0,
            ),
           
           ),
          ],
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
            Text('Name of burger',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
          Icon(
            Icons.favorite_border,
            color: Colors.red,
),
],
           ),
         ),


         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Column(
                 children: [
                   Icon(Icons.phone,color: Colors.amber,),
                   SizedBox(height: 8.0,),
                   Text('Phone'),
                 ],
               ) ,
                 Column(
                 children: [
                   Icon(Icons.directions,color: Colors.amber,),
                    SizedBox(height: 8.0,),
                   Text('Direction'),
                 ],
               ) ,
                 Column(
                 children: [
                   Icon(Icons.share,color: Colors.amber,),
                    SizedBox(height: 8.0,),
                   Text('Share'),
                 ],
               ) ,
             ],
           ),
         ),
       
       
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(
              'A paragraph is a self-contained unit of discourse in writing dealing with a particular point or idea. A paragraph consists of one or more sentences. Though not required by the syntax of any language, paragraphs are usually an expected part of formal writing, used to organize longer pros',

   textAlign: TextAlign.justify,

         ),
       ),
       
        ],
      ),
      
    );
  }
}