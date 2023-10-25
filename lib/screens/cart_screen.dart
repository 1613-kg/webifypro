import 'package:flutter/material.dart';
import 'package:webifypro/widgets/cart_widget.dart';
import 'package:webifypro/widgets/site_custom_appBar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: SiteCustomAppBar(),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CartWidget();
            }),
      ),
    );
  }
}
