import 'package:flutter/material.dart';
import 'package:kuis_f_ril/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(); // Penutup createState
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username =
      TextEditingController(); // Controller untuk username
  TextEditingController _password =
      TextEditingController(); // Controller untuk password
  bool isObsecure = true; // Status visibility password
  bool isError = false; // Status error handling

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Padding untuk tata letak
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Judul
              Text(
                "LOGIN",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ), // Penutup Text
              SizedBox(height: 2), // Spasi
              Text("Selamat datang kembali di ThriftStar!"),
              SizedBox(height: 24),

              // Input Username
              TextField(
                controller: _username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                  filled: true,
                  fillColor: isError
                      ? Colors.red.shade100
                      : Colors.transparent, // Warna jika error
                ),
              ), // Penutup TextField
              SizedBox(height: 12),

              // Input Password
              TextField(
                controller: _password,
                obscureText: isObsecure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  filled: true,
                  fillColor: isError
                      ? Colors.red.shade100
                      : Colors.transparent, // Warna jika error
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObsecure ? Icons.visibility_off : Icons.visibility,
                    ), // Ikon mata
                    onPressed: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                  ),
                ),
              ), // Penutup TextField
              SizedBox(height: 24),

              // Tombol Login
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300], // Warna tombol
                    foregroundColor: Colors.black, // Warna teks tombol
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    String msg = "";
                    if (_username.text == "132" && _password.text == "132") {
                      msg = "Login Sukses";
                      setState(() {
                        isError = false;
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage(username: _username.text)),
                      );
                    } else {
                      msg = "Username/password salah";
                      setState(() {
                        isError = true;
                      });
                    }
                    SnackBar snackbar = SnackBar(content: Text(msg));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Text("Login"),
                ),
              ), // Penutup ElevatedButton
            ],
          ), // Penutup Column
        ), // Penutup Padding
      ), // Penutup Center
    ); // Penutup Scaffold
  }
}
