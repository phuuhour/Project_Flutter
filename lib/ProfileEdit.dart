import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[850]),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(65),
                              child: const Image(
                                image: NetworkImage(
                                    'https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/414732450_1065877734457742_2364415163889367136_n.jpg?stp=dst-jpg_p526x296&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHotUA8yOfvnUvcgvCO3lOYildXcAjneaaKV1dwCOd5psMbub_QPvjbHHobsUHTAAf_HSjQ0qzf_dRY_dx4U0Bf&_nc_ohc=V9vdtbBUPvEQ7kNvgHnR9sk&_nc_ht=scontent.fpnh11-1.fna&oh=00_AYAKaECVLfTFimdOVl2x_rSfk27EMPG2JVP62FIJYYYa1Q&oe=6666F34E'),
                                width: 130,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 115, left: 85),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                color: Colors.white70,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Text(
                        'Bio',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.text_fields,color: Colors.white54,),
                            label: Text('Bio'),
                            labelStyle: TextStyle(color: Colors.white54)),
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.drive_file_rename_outline,color: Colors.white54,),
                            label: Text('Username'),
                            labelStyle: TextStyle(color: Colors.white54)),
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: Colors.white54,),
                            label: Text('Email'),
                            labelStyle: TextStyle(color: Colors.white54)),
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone,color: Colors.white54,),
                            label: Text('Phone Number'),
                            labelStyle: TextStyle(color: Colors.white54)),
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 50),
                            child: SizedBox(
                              width: 120,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.grey[900],
                                height: 45,
                                elevation: 2,
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 40,
                            child: SizedBox(
                              width: 120,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.grey[900],
                                height: 45,
                                elevation: 2,
                                child: const Text(
                                  'Save',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
