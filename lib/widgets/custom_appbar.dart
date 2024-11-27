import 'package:flutter/material.dart';
import 'package:twitter_gates/views/dashboard.dart';
import 'package:twitter_gates/views/detail_card.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int _currentIndex = 0; // Índice de la sección activa

  final List<Widget> _pages = [
    const Dashboard(), // Sección "Para ti"
    const DetailCard(), // Sección "Siguiendo"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Navbar fijo en la parte superior
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem('Para ti', index: 0),
                _buildNavItem('Siguiendo', index: 1),
              ],
            ),
          ),
          // Contenido dinámico según la sección activa
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      ),
    );
  }

  // Construye cada enlace del navbar
  Widget _buildNavItem(String label, {required int index}) {
    final bool isActive = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index; 
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            height: 3,
            width: 60,
            color: isActive ? Colors.blue : Colors.transparent, // Borde azul si está activo
          ),
        ],
      ),
    );
  }
}
