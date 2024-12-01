import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '213270',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Елек со качулка',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/8/1829O-99X-010-1-890541.jpg',
      'description': 'Материјал I: 100% ПОЛИАМИД, Постава: 100% ПОЛИЕСТЕР, MAШИНСКO ПЕРЕЊЕ НА МАКС. ТЕМП. 30° C - БЛАГ ПРОЦЕС, ДА НЕ СЕ ПЕГЛА',
      'price': '999 MKD'
    },
    {
      'name': 'Прошиена јакна',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/1/8/1810O-99X-010-1-846833_4.jpg',
      'description': 'Материјал I: 100% ПОЛИЕСТЕР, Постава: 100% ПОЛИЕСТЕР, MAШИНСКO ПЕРЕЊЕ НА МАКС. ТЕМП. 30° C - БЛАГ ПРОЦЕС, ДА НЕ СЕ СУШИ ВО МАШИНА ЗА СУШЕЊЕ',
      'price': '1 699 MKD'
    },
    {
      'name': 'Jакна',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/5/8/587BS-99X-010-1-870854_2.jpg',
      'description': 'Производ:јакна, Материјал: комбинирани материјали, Шара: обична/без принт, Изолација: изолиран, Сезона: зима, Карактеристики: качулка со постава',
      'price': '2 499 MKD'
    },
    {
      'name': 'Маичка со натпис',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/8/0/804CV-01X-001-1-875380_1.jpg',
      'description': 'Должина: regular Деколте: кружно Ракави: краток Дезен: натпис Крој: regular Материјал: памук Стил: градски Боја: боја на кафе Оддел: Маж',
      'price': '179 MKD'
    },
    {
      'name': 'Пакување од 5 пара чорапи',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/7/6/7635Y-MLC-001-1-808867.jpg',
      'description': 'Тип: чорапи Крој: висок струк Дезен: обична/без принт Материјал: памук Оддел: Маж',
      'price': '259 MKD'
    },
    {
      'name': 'Влечки Grinch',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/7/7/7732U-99X-001-1-901450_2.jpg',
      'description': 'Тип: папучи Пета: рамни обувки Потпетица: рамни Затворач: slip on Прст: кружно Горен дел: пластика Влошка: пластика Облога за чевли: пластика Изолација: гума Ширина: стандард Водоотпорен: не Карактеристики: лиценцазакрпи Боја: црно Употреба: дома Лиценца: Grinch',
      'price': '599 MKD'
    },
    {
      'name': 'Ремен',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/6/8/6811F-09X-001-1-759005_1.jpg',
      'description': 'Тип: пруга Дезен: обична/без принт Карактеристики: трака што се подесува Оддел: Маж',
      'price': '179 MKD'
    },
    {
      'name': 'Ролка',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/6/3/637AW-99X-010-1-865304.jpg',
      'description': 'Производ: Џемпери Тип: џемперролка Материјал: памук Шара: обична/без принт Карактеристики: структурен Оддел: Маж',
      'price': '799 MKD'
    },
    {
      'name': 'Карго тренерки',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/0/8/0824J-99X-001-1-776370_8.jpg',
      'description': 'Производ: панталони Крој: jogger Висина на пас: среден Материјал: памукеластин Закопчување: врзување Карактеристики: врвки Оддел: Маж',
      'price': '799 MKD'
    },
    {
      'name': 'Ракавици NASA',
      'image': 'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/8/7/874AV-99X-001-1-840624.jpg',
      'description': 'Производ: ракавици Материјал: полиестер Шара: обична/без принт Изолација: изолиран Карактеристики: лиценца Оддел: Маж',
      'price': '499 MKD'
    },

  ];

  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('213270'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(products[index]['image']),
              title: Text(products[index]['name']),
              subtitle: Text(products[index]['price']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      product: products[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product['image']),
            const SizedBox(height: 16),
            Text(
              product['name'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(product['description']),
            const SizedBox(height: 16),
            Text(
              product['price'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}