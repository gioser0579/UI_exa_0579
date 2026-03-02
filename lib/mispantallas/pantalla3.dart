import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunidad y Citas'),
        backgroundColor: const Color(0xFF008080),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Educativo
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1514415008039-efa173293080?w=600"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Clases de Salud Dental", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("¡Regístrate gratis hoy!", style: TextStyle(color: Colors.tealAccent)),
                ],
              ),
            ),
            
            const SizedBox(height: 35),
            const Text("Reseñas Reales", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            
            // Lista de Reseñas
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  width: 220,
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.teal.shade50)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(children: [Icon(Icons.star, color: Colors.orange, size: 16), Text(" 5.0 - Paciente")]),
                      SizedBox(height: 5),
                      Text("\"Gran experiencia con el Dr. Gioser.\"", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 35),
            const Text("Promociones del Mes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            
            Row(
              children: [
                _buildPromo("Limpieza\n2x1", Colors.teal.shade50),
                const SizedBox(width: 15),
                _buildPromo("-20% en\nOrtodoncia", Colors.grey.shade100),
              ],
            ),
            
            const SizedBox(height: 40),
            Center(
              child: TextButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/'),
                icon: const Icon(Icons.arrow_back, color: Color(0xFF008080)),
                label: const Text("REGRESAR AL INICIO", style: TextStyle(color: Color(0xFF008080), fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPromo(String texto, Color bg) {
    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(25), border: Border.all(color: Colors.black12)),
        child: Center(child: Text(texto, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF008080)))),
      ),
    );
  }
}