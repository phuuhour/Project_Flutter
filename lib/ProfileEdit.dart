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
                                    'https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/447511355_423250920693420_7265549173597236193_n.jpg?stp=dst-jpg_s640x640&_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH1sedHwC85vH7IDgj_moNmV27wZcxkd11XbvBlzGR3XYT3lsahzkwdVU9_9IqqSNO9ZpAMH86Q0YVnwLdRzrJy&_nc_ohc=rf24rua5m_cQ7kNvgEkRFRH&_nc_ht=scontent.fpnh11-1.fna&oh=00_AYBakFs9eYtsE0tXWdjIBYO3zTIjW6KSR1NtXaJLXUFnqQ&oe=666DB232'),
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
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.white54,
                            ),
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
                            prefixIcon: Icon(
                              Icons.drive_file_rename_outline,
                              color: Colors.white54,
                            ),
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
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white54,
                            ),
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
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.white54,
                            ),
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
