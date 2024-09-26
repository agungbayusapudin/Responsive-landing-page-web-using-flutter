import 'package:flutter/material.dart';
import 'package:food_del_web_responsive/pages/contact_pages.dart';
import 'package:food_del_web_responsive/pages/home_pages.dart';
import 'package:food_del_web_responsive/pages/menu_pages.dart';
import 'package:food_del_web_responsive/pages/service_pages.dart';
import 'package:food_del_web_responsive/responsive/resonsive.dart';

class DasboardPages extends StatefulWidget {
  const DasboardPages({super.key});

  @override
  State<DasboardPages> createState() => _DasboardPagesState();
}

class _DasboardPagesState extends State<DasboardPages> {
  final List screen = [
    HomePages(),
    MenuPages(),
    ServicePages(),
    ContactPages()
  ];

  var scaffoldkey = GlobalKey<ScaffoldState>();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    bool isHovering = false;
    final Size size = MediaQuery.sizeOf(context);
    final width = size.width;
    final height = size.height;
    return Scaffold(
      endDrawer: Drawer(),
      key: scaffoldkey,
      appBar: Resopsive.isMobile(context)
          ? PreferredSize(
              preferredSize: Size(size.width, 50),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 5, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'FOOD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      InkWell(
                        onTap: () => scaffoldkey.currentState?.openEndDrawer(),
                        child: Icon(
                          Icons.legend_toggle_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ))
          : PreferredSize(
              preferredSize: Size(size.width, 50),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.1, left: width * 0.1),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      const Text(
                        'FOOD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                                ;
                              },
                              child: Text('Home'),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                                ;
                              },
                              child: Text('Menu'),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 2;
                                });
                                ;
                              },
                              child: Text('Service'),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  index = 3;
                                });
                                ;
                              },
                              child: Text('Contact'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Icon(Icons.search),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          const Icon(Icons.add_chart),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          InkWell(
                            onTap: () => false,
                            onHover: (value) {
                              setState(() => isHovering = true);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              padding: EdgeInsets.all(isHovering ? 40 : 20),
                              curve: Curves.ease,
                              decoration: BoxDecoration(
                                  color:
                                      isHovering ? Colors.black : Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    color: isHovering
                                        ? Colors.amber
                                        : const Color.fromARGB(255, 38, 3, 3)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              )),
      body: screen[index],
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [Text('ahllo'), Text('agung'), Text('bayu')],
      ),
    );
  }
}
