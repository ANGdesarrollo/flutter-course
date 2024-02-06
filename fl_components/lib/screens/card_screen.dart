
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(name: "Gatito lindo", imageURL: "https://imgs.search.brave.com/toJz42H5iB7y68ihVoGQQDIpYMR7-J6Dw35xC3dyk4I/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pY2hl/Zi5iYmNpLmNvLnVr/L25ld3MvNjQwL2Nw/c3Byb2RwYi8xODUw/NC9wcm9kdWN0aW9u/L185MDQ4ODU5OV90/aGlua3N0b2NrcGhv/dG9zX2dhdG82Lmpw/Zw"),
          SizedBox(height: 10),
          CustomCard2(imageURL: "https://imgs.search.brave.com/toJz42H5iB7y68ihVoGQQDIpYMR7-J6Dw35xC3dyk4I/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pY2hl/Zi5iYmNpLmNvLnVr/L25ld3MvNjQwL2Nw/c3Byb2RwYi8xODUw/NC9wcm9kdWN0aW9u/L185MDQ4ODU5OV90/aGlua3N0b2NrcGhv/dG9zX2dhdG82Lmpw/Zw")

        ],
      )
    );
  }
}

