import 'package:flutter/material.dart';
import 'package:quiz_flutter/widgets/product_grid.dart';

enum FilterOption { Favorites, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    print("overview screen rebuild()");
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyShop'),
          actions: [
            PopupMenuButton(
                onSelected: (FilterOption selectedValue) {
                  setState(() {
                    if (selectedValue == FilterOption.Favorites) {
                      _showOnlyFavorites = true;
                    } else {
                      _showOnlyFavorites = false;
                    }
                  });
                },
                icon: const Icon(Icons.more_vert),
                itemBuilder: (_) => [
                      const PopupMenuItem(
                          child: Text('좋아요한 상품들.'),
                          value: FilterOption.Favorites),
                      const PopupMenuItem(
                          child: Text('모두 보기.'), value: FilterOption.All)
                    ]),
          ],
        ),
        body: ProductsGrid(_showOnlyFavorites));
  }
}
