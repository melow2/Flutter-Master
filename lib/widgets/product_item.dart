import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/providers/product.dart';
import 'package:quiz_flutter/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context);

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
            leading: IconButton(
                icon: Icon(productData.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () {
                  productData.toggleFavoriteStatus();
                },
                color: Theme.of(context).accentColor),
            title: Text(productData.title, textAlign: TextAlign.center),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Theme.of(context).accentColor),
          )),
    );
  }
}
