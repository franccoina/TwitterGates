import 'package:flutter/material.dart';

class CustomPostCard extends StatelessWidget {
  final String? urlImage;
  final String urlAvatar;
  final String user;
  final String username;
  final String description;
  final String date;
  final VoidCallback tapCustom;

  const CustomPostCard({
    super.key,
    this.urlImage,
    required this.urlAvatar,
    required this.user,
    required this.username,
    required this.description,
    required this.date,
    required this.tapCustom,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          color: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: GestureDetector(
            onTap: tapCustom,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      // Avatar
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: urlAvatar.isNotEmpty
                            ? NetworkImage(urlAvatar)
                            : null,
                        backgroundColor: Colors.grey[400],
                        child: urlAvatar.isEmpty
                            ? const Icon(Icons.person,
                                size: 15, color: Colors.white)
                            : null,
                      ),
                      const SizedBox(width: 12),
                      // Usuario del post (nombre del usuario)
                      Text(
                        user,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 4),
                      // Nombre de Usuario + Fecha del post
                      Text('$username · $date',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                          maxLines: 2,
                        ),
                        if (urlImage != null)
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[800],
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                urlImage!,
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    )),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icono de Comentarios
                      const Row(
                        children: [
                          Icon(Icons.chat_bubble_outline,
                              size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            '256',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      // Icono de Retweet
                      const Row(
                        children: [
                          Icon(Icons.repeat_outlined,
                              size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      // Icono de Favorites
                      const Row(
                        children: [
                          Icon(Icons.favorite_border_rounded,
                              size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            '1.2K',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),

                      // Icono de Stats
                      const Row(
                        children: [
                          Icon(Icons.bar_chart_rounded,
                              size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            '1.2K',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),

                      // Icono de Save
                      IconButton(
                        icon: const Icon(Icons.bookmark_outline,
                            color: Colors.grey),
                        onPressed: () {},
                      ),

                      // Icono de Share
                      IconButton(
                        icon: const Icon(Icons.ios_share_rounded,
                            color: Colors.grey),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          )),
    );
  }
}
