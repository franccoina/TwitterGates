import 'package:flutter/material.dart';
import '../../widgets/custom_post_card.dart';  
import '../post_detail_page.dart'; 

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de posts con posibles imágenes, videos o sin ellos
    final List<Map<String, dynamic>> posts = [
      {
        'urlImage': 'https://images.pexels.com/photos/29369234/pexels-photo-29369234.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
        'urlAvatar': 'https://images.pexels.com/photos/29369234/pexels-photo-29369234.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
        'user': 'Carolina Rojas',
        'username': '@carito',
        'description': 'La Extraña Anciana Serbia que baila... Si la miras te persigue hasta mαtαrte... Abro Hilo 🧵',
        'date': '5h',
      },
      {
        'urlImage': 'https://images.pexels.com/photos/28748477/pexels-photo-28748477/free-photo-of-libro-abierto-y-camara-entre-hojas-de-otono.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',  
        'urlAvatar': 'https://images.pexels.com/photos/28748477/pexels-photo-28748477/free-photo-of-libro-abierto-y-camara-entre-hojas-de-otono.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',  
        'user': 'Santiago Giraldo',
        'username': '@santi2',
        'description': '¡No dejes pasar la temporada de descuentos! Con nuestro Crédito de Libre Inversión del Banco de Bogotá puedes comprar todos los regalos en tecnología que necesites en esta vida. 💡💸 Solicítalo aquí y compra tus regalos.',
        'date': '15h',
      },
      {
        'urlImage': null, 
        'urlAvatar': 'https://images.pexels.com/photos/29369234/pexels-photo-29369234.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
        'user': 'July Salda',
        'username': '@julita',
        'description': '📸 ** EXCLUSIVO ** : Liam Payne, visiblemente bajo la influencia del alcohol, siendo escoltado a través del vestíbulo del Hotel CasaSur Palermo pocos minutos antes de su trágica muerte.',
        'date': '2h',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return CustomPostCard(
            urlImage: post['urlImage'],
            urlAvatar: post['urlAvatar'],
            user: post['user'],
            username: post['username'],
            description: post['description'],
            date: post['date'],
            tapCustom: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostDetailPage(
                    urlImage: post['urlImage'],
                    urlAvatar: post['urlAvatar'],
                    user: post['user'],
                    username: post['username'],
                    description: post['description'],
                    date: post['date'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
