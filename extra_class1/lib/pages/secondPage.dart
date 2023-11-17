import 'package:extra_class1/pages/thardPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/nature3.jpg',
                ))),
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 280,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green.shade100,
                                radius: 22,
                                child: Icon(
                                  Icons.nature,
                                  size: 30,
                                  color: Colors.green.shade700,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '1.500',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Pohon Terkumpul',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green.shade100,
                                radius: 22,
                                child: Icon(
                                  Icons.calendar_month,
                                  size: 30,
                                  color: Colors.green.shade700,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '24 Mei',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Batas Donasi',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.green.shade700,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Donasi Kempanye Alam',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Donasimu akan dikalkulasikan dengan harga pohon \n yang sesuai dengan kampanye alam kami',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        ' Pilih Nominal',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: size.height / 18,
                            width: size.width / 4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2, color: Colors.green.shade200)),
                            child: const Text(
                              '10.000',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Container(
                            height: size.height / 18,
                            width: size.width / 4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2, color: Colors.green.shade200)),
                            child: const Text(
                              '20.000',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Container(
                            height: size.height / 18,
                            width: size.width / 4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2, color: Colors.green.shade700)),
                            child: const Text(
                              '30.000',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'Pembayaran',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            //  color: Colors.white,
                            child: Container(
                                height: size.height / 19,
                                width: size.width / 3,
                                alignment: Alignment.center,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.googlePay,
                                      color: Colors.green.shade800),
                                )),
                          ),
                          Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            // color: Colors.white,
                            child: Container(
                                height: size.height / 17,
                                width: size.width / 3.2,
                                alignment: Alignment.center,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.paypal,
                                      color: Colors.green.shade800),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ThardPage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: size.height / 10,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Donasi Sekarang',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 22,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: const Text(
        'Detail',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: IconButton(
            icon: const Icon(
              Icons.share,
              size: 22,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
