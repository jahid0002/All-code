import 'package:extra_class1/pages/secondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Chirity Loudia',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.green.shade800,
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.green.shade800,
              radius: 20,
              child: const Icon(Icons.person, size: 30, color: Colors.white),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 15.0),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Cari kempanye alam...',
                      contentPadding: const EdgeInsets.only(left: 20),
                      hintStyle: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                    ),   
                  ),
                ),
                SizedBox(
                  height: size.height / 40,
                ),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.green.shade800,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'Kado untuk Bumi',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Bersama LindungHutan',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell( 
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> const SecondPage()));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: size.height / 24,
                                width: size.width / 2.4,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'Donasi Sekarang',
                                  style: TextStyle(
                                      color: Colors.green.shade800,
                                      fontWeight: FontWeight.w800, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        child: Image.asset('assets/images/gift.png',
                            height: 200, width: 200)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: size.height / 15,
                            width: size.height / 15,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.favorite,
                                size: 30, color: Colors.green.shade800)),
                        const Text(
                          'Galang',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Text(
                          'Dana',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: size.height / 15,
                            width: size.height / 15,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.nature,
                                size: 30, color: Colors.green.shade800)),
                        const Text('Satu',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        const Text(
                          'Hutan',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: size.height / 15,
                            width: size.height / 15,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.emoji_nature_outlined,
                                size: 30, color: Colors.green.shade800)),
                        const Text(
                          'Hutan',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Text(
                          'Merdeka',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: size.height / 15,
                            width: size.height / 15,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.emoji_nature_outlined,
                                size: 30, color: Colors.green.shade800)),
                        const Text(
                          'Rawat\nBumi',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5.0, right:5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Browser',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Lihat semua',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/nature2.png',
                            height: 200, width: size.width, fit: BoxFit.cover)),
                    const Positioned(
                      bottom: 40,
                      child: Padding(
                        padding: EdgeInsets.only(left:20.0),
                        child: Text(
                          '100 Tress from LUCY \n to Indonesia',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 15,
                      child: Padding(
                        padding: EdgeInsets.only(left:20.0),
                        child: Text(
                          '220 Pohon Terkumpul',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/nature.png',
                      height: 200,
                      width: size.width,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:
                      Image.asset('assets/images/nature.png', fit: BoxFit.fill),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
