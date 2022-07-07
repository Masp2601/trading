import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trading/authentication/login_page.dart';
import 'package:trading/authentication/register_page.dart';

class Credentialscreen extends StatefulWidget {
  const Credentialscreen({Key? key}) : super(key: key);

  @override
  State<Credentialscreen> createState() => _CredentialscreenState();
}

class _CredentialscreenState extends State<Credentialscreen> {
  File? file;
  ImagePicker image = ImagePicker();
  String url = "";
  String? name;
  var color1 = Colors.redAccent[700];
  String? imageDpiAnverso;
  String? imageDpiReverso;
//Anverso
  getImage() async {
    var img = await image.pickImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
    });
    if (file != null) {
      //uploadFileA();
    }
  }

  getImagePick() async {
    var img = await image.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
    if (file != null) {
      // uploadFileA();
    }
  }

  /*uploadFileA() async {
    try {
      var imagefile = FirebaseStorage.instance
          .ref()
          .child("Conductores")
          .child("Anverso")
          .child("anverso_$name.jpg");
      UploadTask task = imagefile.putFile(file!);
      TaskSnapshot snapshot = await task;
      url = await snapshot.ref.getDownloadURL();

      //print(url);
      if (file != null) {
        Fluttertoast.showToast(
          msg: "Dpi  anverso agregado felicidades.",
          textColor: Colors.red,
        );
      } else {
        Fluttertoast.showToast(
          msg: "Dpi  anverso no se agrego.",
          textColor: Colors.red,
        );
      }
    } on Exception catch (e) {
      Fluttertoast.showToast(
        msg: e.toString(),
        textColor: Colors.red,
      );
    }
  }*/

  opcionesAnverso(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Seleccione una opcion:'),
            contentPadding: const EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      getImage();
                    },
                    splashColor: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Tomar una foto',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getImagePick();
                    },
                    splashColor: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Seleccionar una imagen',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.image_outlined,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    splashColor: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

//Reverso
  getImageR() async {
    var img = await image.pickImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
    });
    if (file != null) {
      //uploadFileR();
    }
  }

  getImagePickR() async {
    var img = await image.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
    if (file != null) {
      //uploadFileR();
    }
  }

  /*uploadFileR() async {
    try {
      var imagefile = FirebaseStorage.instance
          .ref()
          .child("Conductores")
          .child("Reverso")
          .child("/$name");
      UploadTask task = imagefile.putFile(file!);
      TaskSnapshot snapshot = await task;
      url = await snapshot.ref.getDownloadURL();

      // print(url);
      if (file != null) {
        Fluttertoast.showToast(
          msg: "Dpi  reverso agregado felicidades.",
          textColor: Colors.red,
        );
      } else {
        Fluttertoast.showToast(
          msg: "Dpi  reverso no se agrego.",
          textColor: Colors.red,
        );
      }
    } on Exception catch (e) {
      Fluttertoast.showToast(
        msg: e.toString(),
        textColor: Colors.red,
      );
    }
  }*/

  opcionesReverso(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Seleccione una opcion:'),
            contentPadding: const EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      getImageR();
                    },
                    splashColor: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Tomar una foto',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getImagePickR();
                    },
                    splashColor: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Seleccionar una imagen',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.image_outlined,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    splashColor: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Seleccionar Dpi',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset("assets/anversoDpi.jpg"),
          ),
          const SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    opcionesAnverso(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  child: const Text("Anverso"),
                ),
                const SizedBox(
                  height: 1,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset("assets/reversoDpi.jpg"),
          ),
          const SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    opcionesReverso(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  child: const Text("Reverso"),
                ),
                const SizedBox(
                  height: 1,
                ),
                const Center(),
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => const RegisterPage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: const Text(
                  "Regresar",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: const Text(
                  "Siguiente",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
