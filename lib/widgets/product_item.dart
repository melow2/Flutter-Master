import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/cart.dart';
import 'package:quiz_flutter/providers/product.dart';
import 'package:quiz_flutter/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context, listen: false);
    final productCart = Provider.of<Cart>(context,listen:true);

    print("product rebuild() #1");
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                  arguments: productData.id);
            },
            child: Image.network(productData.imageUrl, fit: BoxFit.cover),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: Consumer<Product>(
              builder: (ctx, product, child) => IconButton(
                  icon: Icon(product.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border),
                  onPressed: () {
                    product.toggleFavoriteStatus();
                  },
                  color: Theme.of(context).accentColor),
            ),
            title: Text(productData.title, textAlign: TextAlign.center),
            trailing: Consumer<Cart>(
              builder: (ctx, cart, child) => IconButton(
                  onPressed: () {
                    productCart.addItem(
                        productData.id, productData.price, productData.title);
                  },
                  icon: Icon(Icons.shopping_cart),
                  color: Theme.of(context).accentColor),
            ),
          )),
    );
  }
}
