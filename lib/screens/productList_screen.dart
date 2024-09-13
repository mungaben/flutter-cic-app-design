import 'package:cic/screens/ModalDrawer.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  // Sample product data with local image paths
  final List<Map<String, String>> products = [
    {
      'title': 'CIC Annuity',
      'description':
          'An annuity is a contract that converts a sum of money into a series of periodic payments (i.e. monthly, quarterly, semiannually and annually) for an agreed period of time. Annuities are important because they address the financial planning needs of people in or approaching retirement',
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
        title: Text('Home'),
        backgroundColor: Color(0xFF9D162D), // Deep red color
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification bell press
            },
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (String result) {
              // Handle three dots menu item selected
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ModalDrawer(), // Custom drawer widget
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Products',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
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
          ],
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
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // No border radius as requested
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                left: 16,
                child: Container(
                  color: Colors
                      .transparent, // Transparent to allow the image to show
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.yellow[700], // Exact yellow color as per image
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          style: TextStyle(
                              color:
                                  Color(0xFF9D162D)), // Same deep red as AppBar
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF9D162D), // Same deep red as AppBar
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
