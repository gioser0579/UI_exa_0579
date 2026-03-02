import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Great Smile Clinic', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF008080),
        elevation: 0,
        actions: const [Icon(Icons.health_and_safety), SizedBox(width: 15)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner de Identificación
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Color(0xFF008080),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Gioser Fisher", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)),
                  Text("Grado y Grupo: 6-I", style: TextStyle(color: Colors.white70, fontSize: 18)),
                  SizedBox(height: 10),
                  Text("Tu sonrisa es nuestra prioridad", style: TextStyle(color: Colors.tealAccent, fontSize: 14)),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Servicios Principales", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF2D3436))),
                  const SizedBox(height: 15),
                  
                  // Fila de Tratamientos
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _cardServicio("Ortodoncia", "https://images.unsplash.com/photo-1598256989800-fe5f95da9787?w=300"),
                        _cardServicio("Limpieza", "https://images.unsplash.com/photo-1606811841689-23dfddce3e95?w=300"),
                        _cardServicio("Implantes", "https://images.unsplash.com/photo-1588776814546-1ffcf47267a5?w=300"),
                        _cardServicio("Rayos X", "https://images.unsplash.com/photo-1514416432279-50fac261c7dd?w=300"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  const Text("Nuestra Clínica", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  
                  // Galería Corregida
                  Row(
                    children: [
                      Expanded(child: _fotoGrande("https://images.unsplash.com/photo-1629909613654-28e377c37b09?w=500")),
                      const SizedBox(width: 15),
                      Expanded(child: _fotoGrande("https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/consultorio%20inf.webp")),
                    ],
                  ),

                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.people),
                      label: const Text("VER NUESTROS ESPECIALISTAS"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF008080),
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardServicio(String titulo, String url) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
      ),
      child: Column(
        children: [
          Expanded(child: ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(20)), child: Image.network(url, fit: BoxFit.cover))),
          Padding(padding: const EdgeInsets.all(8.0), child: Text(titulo, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  Widget _fotoGrande(String url) {
    return Container(
      height: 180,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)]),
      child: ClipRRect(borderRadius: BorderRadius.circular(25), child: Image.network(url, fit: BoxFit.cover)),
    );
  }
}