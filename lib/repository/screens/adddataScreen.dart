import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_management/widgets/uiHelper.dart';

class adddataScreen extends StatelessWidget {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data Screen"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Uihelper.CustomTextFeild(titlecontroller, "Enter Title", Icons.title),
          Uihelper.CustomTextFeild(
              desccontroller, "Enter desc", Icons.description),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Save"))
        ],
      ),
    );
  }
}
