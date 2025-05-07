import 'package:flutter/material.dart';

class Homes extends StatelessWidget {
  const Homes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Vano Furnitur Handal',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fitur pencarian belum tersedia')),
              );
            },
          ),
        ],
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("kayevano"),
              accountEmail: Text("vanoepepemex@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.grey),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(
              leading: const Icon(Icons.add_business),
              title: const Text('Menu'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Silahkan Pilih Menu')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_card),
              title: const Text('Pembayaran'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Silahkan Lakukan Pembayaran')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Login'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Silahkan Login Terlebih Dahulu')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Silahkan lapor ke contact jika ada keluhan')),
                );
              },
            ),
          ],
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/img/furnitur1.jpg',
                width: 550,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: index == 2 ? 12 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: index == 2 ? Colors.brown : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.brown,
                ),
                const SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Minimalist Furniture',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              child: Column(
                children: [
                  Text(
                    'Bringing Simplicity, Elegance and Thoughtful Design to Your Home, One Piece of the Finest Quality.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'vano jago keren banget, vanoPemberani',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'See next',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),

      // Bottom Navigation (statis, tidak bisa berpindah halaman)
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0, // static
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
