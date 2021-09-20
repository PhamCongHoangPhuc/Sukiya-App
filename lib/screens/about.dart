import 'package:e_commerce/screens/homepage.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xfff8f8f8),
          title: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.red,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 27),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontSize: 40,fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Image(
                image: AssetImage("images/about.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 280,
                width: 360,
                child: Wrap(
                  children: [
                    Text(
                      "Xây dựng và phát triển ứng dụng đặt món nhà hàng SUKIYA"
                          "                                       Các thành viên"
                          "                                       Phạm Công Hoàng Phúc"
                          "                                       Phạm Quốc Hưng"
                          "                                       Nguyễn Tùng Dương",
                      style: TextStyle(fontSize: 19, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
