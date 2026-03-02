import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de fotos garantizadas de médicos especialistas
    final List<String> fotos = [
      "https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/esp1.png",
      "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?w=400",
      "https://images.unsplash.com/photo-1594824476967-48c8b964273f?w=400",
      "https://images.unsplash.com/photo-1537368910025-700350fe46c7?w=400",
      "https://images.unsplash.com/photo-1622253692010-333f2da6031d?w=400",
      "https://images.unsplash.com/photo-1614608682850-e0d6ed316d47?w=400",
      "https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/esp2.jpg",
      "https://images.unsplash.com/photo-1623854767648-e7bb8009f0db?w=400",
      "https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/esp3.jpeg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Especialistas', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.teal),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Buscar dentista...",
                prefixIcon: Icon(Icons.search, color: Colors.teal),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                ),
                itemCount: 9,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5)],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(fotos[index], fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, minimumSize: const Size(double.infinity, 50)),
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: const Text("RESERVAS Y RESEÑAS", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}