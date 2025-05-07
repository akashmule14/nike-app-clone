import 'package:flutter/material.dart';
import 'package:nike_app/pages/home_page.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding( 
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/nike.png',
              height: 250,
              ),  
            ),
        
            const SizedBox(height: 48),


            Text(
              'Just Do It',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            Text(
              'Brand New Snikers and Kicks',
              style: TextStyle(
                fontSize: 17,
              
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 48),

            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
                ),
                child:Padding( 
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      )
      
    ); 
  }
}