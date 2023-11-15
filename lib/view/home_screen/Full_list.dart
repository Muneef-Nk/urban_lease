import 'package:flutter/material.dart';
import 'package:rent_cruise/view/home_screen/Mycard1.dart';

class FullList extends StatefulWidget {
  const FullList({super.key});

  @override
  State<FullList> createState() => _FullListState();
}

class _FullListState extends State<FullList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250, crossAxisCount: 2),
                itemBuilder: (context, index) => Mycard1(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
