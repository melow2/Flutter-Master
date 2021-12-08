import 'package:flutter/material.dart';
import 'package:quiz_flutter/models/product.dart';
import 'package:quiz_flutter/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: '빨강 빨강, 빨강셔츠!',
      description: '아주 아주 예쁜 빨간색 셔츠가 있어용!!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: '멋짐 뿜뿜 바지',
      description: '다리가 길어보이는 바지.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: '노란색 섹시 스카프.',
      description: '겨울엔 섹시하게',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: '후라이 후라이 후라이팬.',
      description: '계란후라이 먹고싶노!',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // 가로 방향 아이템 갯수.
            crossAxisCount: 2,
            // 가로 세로 비율
            childAspectRatio: 1 / 1,
            // 가로 방향 아이템 사이 간격
            crossAxisSpacing: 0,
            // 세로 방향 아이템 사이 간격.
            mainAxisSpacing: 0),
        itemBuilder: (ctx, i) => ProductItem(
          id: loadedProducts[i].id,
          title: loadedProducts[i].title,
          imageUrl: loadedProducts[i].imageUrl,
        ),
        itemCount: loadedProducts.length,
      ),
    );
  }
}
