import 'package:flutter/material.dart';
import 'package:nike_app/components/shoe_tile.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart' show Shoe;
import 'package:provider/provider.dart';



class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    
    //alert the user, shoe successfully added
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully added'),
      content: Text('check your cart'),
    ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        // search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(color:Colors.grey[100],
          borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              const Text('Search'),
              Icon(
                Icons.search,
                )
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical:25),
          child: Text('Everyone flies...some fly longer than other 😎'),
        ),
        
        // picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Picks 🔥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              ),
              Text('See all', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
              
            ],
          ),
        ),

        const SizedBox(height: 10),



        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );

        },
        ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0,left: 25.0, right: 25.0),
          child: Divider(color: Colors.white,),
        )
      ],
    )
    );
  }
}