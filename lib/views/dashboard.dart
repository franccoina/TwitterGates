import 'package:flutter/material.dart';
import './detail_card.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_bottom_nav.dart';
import '../widgets/custom_image_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Navigate to another view
  goToOtherView() async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DetailCard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: ListView(
              children: [
                CustomImagecard(
                  'https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  goToOtherView,
                ),
                CustomImagecard(
                  'https://images.pexels.com/photos/29315816/pexels-photo-29315816/free-photo-of-elegantes-cisnes-junto-al-agua-en-un-dia-tranquilo.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                  goToOtherView,
                ),
                CustomImagecard(
                  'https://images.pexels.com/photos/29137971/pexels-photo-29137971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  goToOtherView,
                ),
                CustomImagecard(
                  'https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  goToOtherView,
                ),
                CustomImagecard(
                  'https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  goToOtherView,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
