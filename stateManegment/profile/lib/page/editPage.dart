import 'package:flutter/material.dart';

import 'package:profile/provider/profileProvider.dart';
import 'package:provider/provider.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final _nameControler = TextEditingController();
  final _profationControler = TextEditingController();
  final _varcityControler = TextEditingController();
  final _locationControler = TextEditingController();
  final _emailControler = TextEditingController();
  final _numberControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          'Edit',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xfffdfcfb), Color(0xffe2d1c3)])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Update Your Profile',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: _nameControler,
                  decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      focusColor: Colors.blue.shade400,
                      prefixIcon: const Icon(Icons.edit,
                          size: 20, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: _profationControler,
                  decoration: InputDecoration(
                      hintText: "Enter your profation",
                      focusColor: Colors.blue.shade400,
                      prefixIcon: const Icon(Icons.edit,
                          size: 20, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: _varcityControler,
                  decoration: InputDecoration(
                      hintText: "Enter your varsity name",
                      focusColor: Colors.blue.shade400,
                      prefixIcon: const Icon(Icons.edit,
                          size: 20, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: _locationControler,
                  decoration: InputDecoration(
                      hintText: "Your location",
                      focusColor: Colors.blue.shade400,
                      prefixIcon: const Icon(Icons.edit,
                          size: 20, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: _emailControler,
                  decoration: InputDecoration(
                      hintText: "Your Email id",
                      focusColor: Colors.blue.shade400,
                      prefixIcon: const Icon(Icons.edit,
                          size: 20, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: _numberControler,
                  decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      focusColor: Colors.blue.shade400,
                      prefixIcon: const Icon(Icons.edit,
                          size: 20, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<ProfileProvider>(builder: (context, provider, child) {
                return InkWell(
                  onTap: () {
                    if (_nameControler.text.isNotEmpty) {
                      provider.addName(_nameControler.text);
                    }else{
                      provider.addName('Your Name');
                    }
                     if (_profationControler.text.isNotEmpty) {
                      provider.addProfation(_profationControler.text);
                    } else {
                      provider.addProfation('Profation');
                    }
        
                     if (_varcityControler.text.isNotEmpty) {
                      provider.addVarcity(_varcityControler.text);
                    } else {
                      provider.addVarcity('Varcity Name, City');
                    } 
                     if (_locationControler.text.isNotEmpty) {
                      provider.addLocation(_locationControler.text);
                    } else {
                      provider.addLocation('Location');
                    } 
                     if (_emailControler.text.isNotEmpty) {
                      provider.addGmail(_emailControler.text);
                    } else {
                      provider.addGmail('Your Email');
                    } 
        
                     if (_numberControler.text.isNotEmpty) {
                      provider.addNumber(_numberControler.text);
                    } else {
                      provider.addNumber('Your Number');
                    } 
                    
                    
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Submited',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      )),
    );
  }
}
