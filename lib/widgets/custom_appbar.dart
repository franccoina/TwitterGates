import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;

  const CustomAppBar({super.key, required this.onTabSelected});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int _currentIndex = 0; // Índice de la pestaña activa

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        padding: const EdgeInsets.only(bottom: 5, top: 30, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/4842566/pexels-photo-4842566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  backgroundColor: Colors.transparent,
                ),
                Center(
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/5/57/X_logo_2023_%28white%29.png",
                      height: 25,
                      fit: BoxFit.contain),
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem('Para ti', 0),
                _buildNavItem('Siguiendo', 1),
              ],
            ),
          ],
        ));
  }

  Widget _buildNavItem(String label, int index) {
    final bool isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
        widget.onTabSelected(index);
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
            color: isActive ? Colors.blue : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
