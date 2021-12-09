import 'package:flutter/material.dart';
import 'package:quiz_flutter/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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

  List<Product> get items {
    return [..._items]; // ...은 하나씩 빼서 리턴해줌.
  }

  void addProduct() {
    notifyListeners();
  }
}
