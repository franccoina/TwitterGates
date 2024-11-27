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
        'urlImage': 'https://images.pexels.com/photos/29175909/pexels-photo-29175909/free-photo-of-viaje-panoramico-en-tren-a-traves-de-un-exuberante-bosque-verde.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        'user': 'Carolina Rojas',
        'username': '@carito',
        'description': 'Descripción breve del post 1.',
        'date': '21h',
      },
      {
        'urlImage': 'https://images.pexels.com/photos/29378178/pexels-photo-29378178/free-photo-of-dos-tazas-de-cafe-en-el-balcon-con-vista-panoramica.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',  
        'user': 'Santiago Giraldo',
        'username': '@santi2',
        'description': 'Descripción breve del post 2.',
        'date': '2h',
      },
      {
        'urlImage': null, 
        'user': 'July Salda',
        'username': '@julita',
        'description': 'Descripción breve del post 3.',
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
