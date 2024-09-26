import 'package:flutter/material.dart';
import 'package:food_del_web_responsive/responsive/resonsive.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    bool isHovering = false;

    final Size size = MediaQuery.sizeOf(context);
    final width = size.width;
    final height = size.height;

    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.white,
          padding: Resopsive.isMobile(context)
              ? EdgeInsets.all(10)
              : EdgeInsets.only(right: width / 9, left: width / 9),
          height: Resopsive.isMobile(context) ? height / 1.3 : height,
          width: width,
          child: Column(
            children: [
              Resopsive.isMobile(context)
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Container(
                            height: height / 1.4,
                            width: width,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Container(
                                      height: height * 0.04,
                                      width: width * 0.4,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 199, 196),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'More than Faster',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10),
                                          ),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          const Icon(
                                            Icons.apple,
                                            color: Colors.red,
                                          )
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Container(
                                    height: height / 3,
                                    width: width / 2.3,
                                    child: const Image(
                                        image:
                                            AssetImage('assets/dasboard.png')),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Be The Fastes In Delivering Your Food',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: Resopsive.isMobile(context)
                                            ? 30
                                            : 50),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(right: 20, left: 20),
                                    child: Text(
                                        'trobosan baru untuk anda yang sednagn melakukan diet dimana dapat membuat waktu kalian lebih efisien dan terjangkau')),
                                Resopsive.isMobile(context)
                                    ? Padding(
                                        padding:
                                            EdgeInsets.only(top: 30, left: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            OutlinedButton(
                                              onPressed: null,
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0))),
                                              ),
                                              child: const Text("Order now"),
                                            ),
                                            SizedBox(
                                              width: width * 0.1,
                                            ),
                                            OutlinedButton(
                                              onPressed: null,
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0))),
                                              ),
                                              child: const Text("Order now"),
                                            ),
                                          ],
                                        ),
                                      )
                                    : Expanded(
                                        child: Row(
                                        children: [
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            onHover: (value) {
                                              setState(() {
                                                isHovering = value;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              height: height * 0.04,
                                              width: width * 0.06,
                                              duration:
                                                  Duration(milliseconds: 200),
                                              curve: Curves.ease,
                                              decoration: BoxDecoration(
                                                  color: isHovering
                                                      ? Colors.black
                                                      : const Color.fromARGB(
                                                          255, 243, 68, 33),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Text(
                                                'Order now',
                                                style: TextStyle(
                                                    color: isHovering
                                                        ? Colors.amber
                                                        : const Color.fromARGB(
                                                            255,
                                                            255,
                                                            255,
                                                            255)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.05,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            onHover: (context) {
                                              setState(() {
                                                isHovering = true;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              height: height * 0.04,
                                              width: width * 0.07,
                                              duration:
                                                  Duration(milliseconds: 200),
                                              curve: Curves.ease,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  color: isHovering
                                                      ? Colors.black
                                                      : const Color.fromARGB(
                                                          255, 255, 255, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Text(
                                                'Order Proces',
                                                style: TextStyle(
                                                    color: isHovering
                                                        ? Colors.amber
                                                        : const Color.fromARGB(
                                                            255, 38, 3, 3)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ))
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: width * 0.1,
                        // ),
                      ],
                    )
                  : Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Container(
                            height: height,
                            width: width / 3,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height * 0.09,
                                      bottom: height * 0.02,
                                      right: width * 0.2),
                                  child: Container(
                                      height: height * 0.06,
                                      width: width * 0.15,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 199, 196),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'More than Faster',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          const Icon(
                                            Icons.apple,
                                            color: Colors.red,
                                          )
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: width * 0.1, top: height * 0.05),
                                  child: Text(
                                    'Be The Fastes In Delivering Your Food',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: Resopsive.isMobile(context)
                                            ? 20
                                            : 50),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.07),
                                    child: Text(
                                        'trobosan baru untuk anda yang sednagn melakukan diet dimana dapat membuat waktu kalian lebih efisien dan terjangkau')),
                                Expanded(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          isHovering = value;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        height: height * 0.04,
                                        width: width * 0.06,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.ease,
                                        decoration: BoxDecoration(
                                            color: isHovering
                                                ? Colors.black
                                                : const Color.fromARGB(
                                                    255, 243, 68, 33),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Text(
                                          'Order now',
                                          style: TextStyle(
                                              color: isHovering
                                                  ? Colors.amber
                                                  : const Color.fromARGB(
                                                      255, 255, 255, 255)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.05,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      onHover: (context) {
                                        setState(() {
                                          isHovering = true;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        height: height * 0.04,
                                        width: width * 0.07,
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.ease,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            color: isHovering
                                                ? Colors.black
                                                : const Color.fromARGB(
                                                    255, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Text(
                                          'Order Proces',
                                          style: TextStyle(
                                              color: isHovering
                                                  ? Colors.amber
                                                  : const Color.fromARGB(
                                                      255, 38, 3, 3)),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: width * 0.1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                            height: height,
                            width: width / 2.3,
                            child: const Image(
                                image: AssetImage('assets/dasboard.png')),
                          ),
                        )
                      ],
                    ),
            ],
          ),
        ),
// screen 2 of pages

        ServiceLayout(width: width, height: height),

//  screen 3 of content
        MenuLayout(width: width, height: height),

// container pages 3

        TestimoniLayout(height: height, width: width),
// pages
        PromotionAppLayout(width: width, height: height),
// footer
        footerLayout(width: width, height: height)
      ],
    ));
  }
}

class ServiceLayout extends StatelessWidget {
  const ServiceLayout({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: width / 9, left: width / 9),
      height: Resopsive.isMobile(context) ? height * 1.3 : height,
      width: width,
      color: const Color.fromARGB(255, 254, 240, 239),
      child: Column(
        children: [
          SizedBox(
            height: Resopsive.isMobile(context) ? height * 0.05 : height * 0.15,
          ),
          Text(
            'What We Serve',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Your Favorite Food ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(
            'Delivery Partner',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Resopsive.isMobile(context)
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 50,
                        child: SizedBox(
                          height: height * 0.3,
                          width: width * 0.6,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Icon(
                                Icons.bookmark_add,
                                size: 90,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Easy To Order',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Mudah dalam pemesanan dan cs kami mudah untuk berinteraksi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 50,
                        child: SizedBox(
                          height: height * 0.3,
                          width: width * 0.6,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Icon(
                                Icons.bike_scooter_rounded,
                                size: 90,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Fastest Delivery',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Mudah dalam pemesanan dan cs kami mudah untuk berinteraksi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 50,
                        child: SizedBox(
                          height: height * 0.3,
                          width: width * 0.6,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Icon(
                                Icons.emoji_people_outlined,
                                size: 90,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Best Quality',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Mudah dalam pemesanan dan cs kami mudah untuk berinteraksi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 50,
                        child: SizedBox(
                          height: height * 0.4,
                          width: width * 0.2,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Icon(
                                Icons.bookmark_add,
                                size: 90,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Easy To Order',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Mudah dalam pemesanan dan cs kami mudah untuk berinteraksi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 50,
                        child: SizedBox(
                          height: height * 0.4,
                          width: width * 0.2,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Icon(
                                Icons.bike_scooter_rounded,
                                size: 90,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Fastest Delivery',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Mudah dalam pemesanan dan cs kami mudah untuk berinteraksi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 50,
                        child: SizedBox(
                          height: height * 0.4,
                          width: width * 0.2,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Icon(
                                Icons.emoji_people_outlined,
                                size: 90,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Best Quality',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Mudah dalam pemesanan dan cs kami mudah untuk berinteraksi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

class footerLayout extends StatelessWidget {
  const footerLayout({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Resopsive.isMobile(context)
          ? EdgeInsets.all(30)
          : EdgeInsets.only(right: width / 9, left: width / 9),
      height: Resopsive.isMobile(context) ? height * 0.83 : height / 1.4,
      width: width,
      color: Colors.white,
      child: Column(
        children: [
          Resopsive.isMobile(context)
              ? SizedBox(
                  height: 10,
                )
              : SizedBox(
                  height: height / 5,
                ),
          Resopsive.isMobile(context)
              ? Column(
                  children: [
                    Container(
                      height: height / 7,
                      width: width,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.11),
                            child: Text('FOOD',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black)),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            'Nikmati penjelajahan anda dalam website ini untuk menambah pengalaman yang lebih menarik ,kepuasan anda adalah tugas kami',
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 112, 111, 111)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height / 4,
                          width: width / 2.5,
                          child: Column(
                            children: [
                              Text('Company',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('About us'),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('Blog'),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('All Product'),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('Location Map'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: height / 4,
                          width: width / 2.5,
                          child: Column(
                            children: [
                              Text('Company',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('About us'),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('Blog'),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('All Product'),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              InkWell(
                                child: Text('Location Map'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: height / 4,
                      width: width,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: Text('Get In Torch',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black)),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                              'Nikmati penjelajahan anda dalam website ini untuk menambah '),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              InputChip(
                                  label: Text('Enter yout email address')),
                              Icon(Icons.send)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height / 4,
                      width: width / 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.11),
                            child: Text('FOOD',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black)),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            'Nikmati penjelajahan anda dalam website ini untuk menambah pengalaman yang lebih menarik ,kepuasan anda adalah tugas kami',
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 112, 111, 111)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height / 4,
                      width: width / 9,
                      child: Column(
                        children: [
                          Text('Company',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('About us'),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('Blog'),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('All Product'),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('Location Map'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height / 4,
                      width: width / 9,
                      child: Column(
                        children: [
                          Text('Company',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('About us'),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('Blog'),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('All Product'),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            child: Text('Location Map'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height / 4,
                      width: width / 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: Text('Get In Torch',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black)),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                              'Nikmati penjelajahan anda dalam website ini untuk menambah '),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              InputChip(
                                  label: Text('Enter yout email address')),
                              Icon(Icons.send)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
          SizedBox(
            height: Resopsive.isMobile(context) ? height / 40 : height / 5,
          ),
          Resopsive.isMobile(context)
              ? Column(
                  children: [
                    Text(
                      'All Right Reserved @ company 2022',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    Text(
                      'Terms & Condition',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      'Privacy & Policy',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              : Row(
                  children: [
                    Text(
                      'All Right Reserved @ company 2022',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    Text(
                      'Terms & Condition',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      'Privacy & Policy',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

class PromotionAppLayout extends StatelessWidget {
  const PromotionAppLayout({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Resopsive.isMobile(context)
          ? EdgeInsets.all(20)
          : EdgeInsets.only(right: width / 9, left: width / 9),
      height: Resopsive.isMobile(context) ? height / 1.5 : height,
      width: width,
      color: const Color.fromARGB(255, 254, 240, 239),
      child: Resopsive.isMobile(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height:
                      Resopsive.isMobile(context) ? height / 4 : height / 1.5,
                  width: width / 3,
                  child: Image.asset('assets/handphone.png'),
                ),
                Container(
                  height:
                      Resopsive.isMobile(context) ? height / 3 : height / 1.5,
                  width: Resopsive.isMobile(context) ? width : width / 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height / 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: Resopsive.isMobile(context)
                                ? width / 20
                                : width / 4.1),
                        child: Text(
                          'Download Our App',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          'Get The Groceries App Order More Easily',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Resopsive.isMobile(context) ? 16 : 40),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          'Download aplikasi untuk pengalaman yang lebih seru sekarang bisa kalian download disini',
                          style: TextStyle(color: Colors.grey),
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height / 20,
                            width: width / 3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/playstore.png'))),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                              height: height / 20,
                              width: width / 3,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/appstore.png'))))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          : Row(
              children: [
                SizedBox(
                  height: Resopsive.isMobile(context) ? height : height / 1.5,
                  width: width / 3,
                  child: Image.asset('assets/handphone.png'),
                ),
                Container(
                  height:
                      Resopsive.isMobile(context) ? height / 5 : height / 1.5,
                  width: Resopsive.isMobile(context) ? width / 2 : width / 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height / 7,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: Resopsive.isMobile(context)
                                ? width / 20
                                : width / 4.1),
                        child: Text(
                          'Download Our App',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          'Get The Groceries App Order More Easily',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Resopsive.isMobile(context) ? 16 : 40),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width / 8),
                        child: Text(
                          'Download aplikasi untuk pengalaman yang lebih seru sekarang bisa kalian download disini',
                          style: TextStyle(color: Colors.grey),
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height / 10,
                            width: width / 7,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/playstore.png'))),
                          ),
                          Container(
                              height: height / 10,
                              width: width / 7,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/appstore.png'))))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}

class TestimoniLayout extends StatelessWidget {
  const TestimoniLayout({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(right: width / 9, left: width / 9),
      height: height,
      width: width,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Testimoni About Us',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Resopsive.isMobile(context) ? 20 : 40),
          ),
          Container(
            height: 7,
            width: width * 0.03,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            'Pengalaman seru bersama kami untuk nikmati pemesanan makanan yang cepat',
            textAlign: Resopsive.isMobile(context) ? TextAlign.center : null,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: Resopsive.isMobile(context) ? 15 : 16),
          ),
          Text('dan memiliki kualita yang dapat dengan yang lain',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: Resopsive.isMobile(context) ? 15 : 16)),
          SizedBox(
            height: height / 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_left_outlined,
                  size: 100,
                ),
                Resopsive.isMobile(context)
                    ? Card(
                        elevation: 10,
                        color: Colors.white,
                        child: SizedBox(
                          height: height / 2,
                          width: width / 1.5,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height / 20,
                              ),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.purple,
                              ),
                              SizedBox(
                                height: height / 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: width / 2,
                                    height: height / 20,
                                    child: Text(
                                      'Website yang menakjubkan dan memiliki berbagai fitur yang sangat membatu bagi saya untuk dapat melakukan pemesanan yang menarik,dengan palikasi ini saya dapat menghemat waktu saya ,sehingga saya memiliki waktu untuk melakukan kegiatan',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                      maxLines: 5,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      'Agung Bayu Sapudin',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.red),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      'Petung, IDN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    : Card(
                        elevation: 10,
                        color: Colors.white,
                        child: SizedBox(
                          height: height / 2.5,
                          width: width / 1.3,
                          child: Row(
                            children: [
                              SizedBox(
                                width: width / 12,
                              ),
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.purple,
                              ),
                              SizedBox(
                                width: width / 25,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  Container(
                                    width: width / 2,
                                    height: height / 8,
                                    child: Text(
                                      'Website yang menakjubkan dan memiliki berbagai fitur yang sangat membatu bagi saya untuk dapat melakukan pemesanan yang menarik,dengan palikasi ini saya dapat menghemat waktu saya ,sehingga saya memiliki waktu untuk melakukan kegiatan',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                      maxLines: 5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.38),
                                    child: Text(
                                      'Agung Bayu Sapudin',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.red),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.445),
                                    child: Text(
                                      'Petung, IDN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 100,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuLayout extends StatelessWidget {
  const MenuLayout({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: width / 9, left: width / 9),
      height: Resopsive.isMobile(context) ? height : height + height / 2,
      width: width,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: Resopsive.isMobile(context) ? 20 : height * 0.15,
          ),
          Text(
            'Our menu',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Menu That Always Make You',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Resopsive.isMobile(context) ? 20 : 35),
          ),
          Text(
            'Fall In Love',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Resopsive.isMobile(context) ? 20 : 35),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Resopsive.isMobile(context)
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: AnimatedContainer(
                            height: height / 25,
                            width: width / 5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            duration: Duration(milliseconds: 200),
                            child: Icon(Icons.filter_list)),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      InkWell(
                        child: AnimatedContainer(
                          height: height / 25,
                          width: width / 5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          duration: Duration(milliseconds: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.food_bank), Text('Burger')],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      InkWell(
                        child: AnimatedContainer(
                          height: height / 25,
                          width: width / 5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          duration: Duration(milliseconds: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.food_bank), Text('Burger')],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      InkWell(
                        child: AnimatedContainer(
                          height: height / 25,
                          width: width / 5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          duration: Duration(milliseconds: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.food_bank), Text('Burger')],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      InkWell(
                        child: AnimatedContainer(
                          height: height / 25,
                          width: width / 5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          duration: Duration(milliseconds: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.food_bank), Text('Burger')],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      InkWell(
                        child: AnimatedContainer(
                          height: height / 25,
                          width: width / 5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          duration: Duration(milliseconds: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.food_bank), Text('Burger')],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: AnimatedContainer(
                          height: height * 0.05,
                          width: width * 0.04,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          duration: Duration(milliseconds: 200),
                          child: Icon(Icons.filter_list)),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: height * 0.05,
                        width: width * 0.07,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(milliseconds: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.food_bank), Text('Burger')],
                        ),
                      ),
                    )
                  ],
                ),
          SizedBox(
            height: height * 0.05,
          ),
          Resopsive.isMobile(context)
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
          Resopsive.isMobile(context)
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: height / 5,
                          width: width / 3,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image(
                                    image: AssetImage('assets/burger.png')),
                              ),
                              Text(
                                'Royale De luxe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('140 g'),
                              Text(
                                "Rp 4.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        height: height / 3,
                        width: width / 6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.2,
                              child:
                                  Image(image: AssetImage('assets/burger.png')),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              'Royale De luxe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('140 g'),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Rp 4.0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
          SizedBox(
            height: height * 0.05,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Show More',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            style: TextButton.styleFrom(
              shadowColor: Colors.red,
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
