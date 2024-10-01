import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    //widget button section
    Widget buttonsection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
      
    );


  //widget title section
  Widget titleSection = Container(
  padding:
  const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'Osechine Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),

      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41')
    ]
     )
  );

    //widget text section
    Widget textsection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Wild camping is prohibited in the entire region Oeschinensee . A ranger is out and about in the area every day, including in the evenings, to inform guests. Among other things, wild campers who disregard the camping ban will be asked to take down their tents. Please only use official campsites for overnight stays. '
    'Tambahkan nama dan NIM Anda sebagai '
    'Nissa Serena Primadani, 362358302110',
    softWrap: true,
  ),
);
  

  return MaterialApp(
    title: 'Flutter Layout Demo',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text ("Serena | 362358302110")
     ),
     body: ListView(
      children: [
        Image.asset(
          'pantai.png',
          width: 600,
          height: 240,
        ),


        titleSection,
        buttonsection,
        textsection

      ],
     ) 
    )
  );
}
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
