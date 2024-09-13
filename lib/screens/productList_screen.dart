// slide from botyon case cahange jus sthe drawer

// import 'package:cic/screens/ModalDrawer.dart';
// import 'package:flutter/material.dart';

// class ProductScreen extends StatelessWidget {
//   // Sample product data with local image paths
//   final List<Map<String, String>> products = [
//     {
//       'title': 'CIC Annuity',
//       'description':
//           'An annuity is a contract that converts a sum of money into a series of periodic payments...',
//       'image': 'assets/annuity_plan_image.png'
//     },
//     {
//       'title': 'CIC Jipange Fund',
//       'description': 'Jipange Fund helps you grow your savings steadily...',
//       'image': 'assets/guaranteed_fund_image.png'
//     },
//     {
//       'title': 'CIC Retirement Plan',
//       'description':
//           'Retirement Plan ensures financial security for your retirement...',
//       'image': 'assets/retirement_plan_image.png'
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Screen'),
//         backgroundColor: Colors.red[900],
//         actions: [
//           IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {
//               // Open modal drawer when the menu button is pressed
//               showModalBottomSheet(
//                 context: context,
//                 builder: (context) {
//                   return Container(
//                     height: MediaQuery.of(context).size.height *
//                         0.6, // Set height of modal
//                     child: ModalDrawer(),
//                   );
//                 },
//                 isScrollControlled: true, // Allows the modal to take more space
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: products.length,
//           itemBuilder: (context, index) {
//             return ProductCard(
//               title: products[index]['title']!,
//               description: products[index]['description']!,
//               imageUrl: products[index]['image']!,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageUrl;

//   const ProductCard({
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//             child: Image.asset(
//               imageUrl,
//               height: 200,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                     color: Colors
//                         .yellow[700], // Matched to your image's title color
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   description,
//                   style: TextStyle(fontSize: 14, color: Colors.black87),
//                 ),
//                 SizedBox(height: 10),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {
//                       // Handle read more button tap here
//                     },
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'READ MORE',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                         Icon(
//                           Icons.arrow_forward,
//                           color: Colors.red,
//                           size: 16,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:cic/screens/ModalDrawer.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  // Sample product data with local image paths
  final List<Map<String, String>> products = [
    {
      'title': 'CIC Annuity',
      'description':
          'An annuity is a contract that converts a sum of money into a series of periodic payments...',
      'image': 'assets/annuity_plan_image.png'
    },
    {
      'title': 'CIC Jipange Fund',
      'description': 'Jipange Fund helps you grow your savings steadily...',
      'image': 'assets/guaranteed_fund_image.png'
    },
    {
      'title': 'CIC Retirement Plan',
      'description':
          'Retirement Plan ensures financial security for your retirement...',
      'image': 'assets/retirement_plan_image.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Screen'),
        backgroundColor: Colors.red[900],
      ),
      drawer: Drawer(
        child: ModalDrawer(), // This is the custom drawer widget
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(
              title: products[index]['title']!,
              description: products[index]['description']!,
              imageUrl: products[index]['image']!,
            );
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProductCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors
                        .yellow[700], // Matched to your image's title color
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Handle read more button tap here
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'READ MORE',
                          style: TextStyle(color: Colors.red),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
