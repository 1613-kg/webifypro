import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webifypro/constanst.dart';
import 'package:webifypro/services/providers/edit_panel_provider.dart';
import 'package:webifypro/widgets/edit_text.dart';
import 'package:webifypro/widgets/image_edit.dart';
import 'package:webifypro/widgets/product_widget.dart';
import 'package:webifypro/widgets/site_custom_appBar.dart';

import '../services/providers/text_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    double height = getHeight(context);
    bool isEditText =
        Provider.of<EditPanelProvider>(context, listen: true).isTextEdit;
    bool isImageText =
        Provider.of<EditPanelProvider>(context, listen: true).isImageEdit;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: SiteCustomAppBar(),
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isEditText) EditText(),
            if (isImageText) ImageEdit(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              width: width / 1.2,
              child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: width / 25,
                    mainAxisSpacing: height / 9,
                  ),
                  itemBuilder: (context, index) {
                    return Consumer<TextProvider>(
                      builder: (context, value, child) {
                        return ProductWidget(
                          index: index,
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
