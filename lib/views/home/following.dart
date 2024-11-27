import 'package:flutter/material.dart';
import '../../widgets/custom_post_card.dart';  
import '../post_detail_page.dart'; 

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de posts con posibles imágenes, videos o sin ellos
    final List<Map<String, dynamic>> posts = [
      {
        'urlImage': 'https://images.pexels.com/photos/2452408/pexels-photo-2452408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'urlAvatar': 'https://images.pexels.com/photos/2452408/pexels-photo-2452408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'user': 'David Blandón Mena',
        'username': '@franccoina',
        'description': 'Normally I’m skeptical, but he redirected the gun-barrel 0.18 seconds, which is faster than the human brain to fingertip reaction speed (0.21 seconds).',
        'date': '21h',
      },
      {
        'urlImage': 'https://images.pexels.com/photos/15953861/pexels-photo-15953861/free-photo-of-mujer-vintage-otono-caer.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',  
        'urlAvatar': 'https://images.pexels.com/photos/29369234/pexels-photo-29369234.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
        'user': 'Carla Morrison',
        'username': '@disfruto02',
        'description': 'Buscamos creadores audiovisuales. Si tú lo eres, ¡esto es para ti! Tu cortometraje puede ser parte de la selección oficial del Festival de Animación Comfama 2025. Un espacio ideal para mostrar tu talento y conectar con otros creadores audiovisuales de Iberoamérica y Colombia.',
        'date': '2h',
      },
      {
        'urlImage': null, 
        'urlAvatar': 'https://images.pexels.com/photos/2452408/pexels-photo-2452408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'user': 'Andre López',
        'username': '@andrlop',
        'description': 'Martial artist Victor Marx is the current world record holder of the quickest disarm - with him taking possession of the gun and emptying the magazine in just 0.8 seconds.',
        'date': '3h',
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
