import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}


class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}


class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.message, color: Colors.grey),
        const SizedBox(width: 8),
        Text(sender),
      ],
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}


class ImageItem implements ListItem {
  final String title;
  final String imagePath;

  ImageItem(this.title, this.imagePath);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return Image.asset(
      ('images/arwana.jpeg'),
      fit: BoxFit.cover,
    );
  }
}


class LayoutListitem extends StatelessWidget {
  const LayoutListitem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(
      30,
      (i) {
        if (i % 5 == 0) {
          return HeadingItem("Heading $i");
        } else if (i % 3 == 0) {
          return ImageItem("Image Item $i", "images/sample.png");
        } else {
          return MessageItem("Sender $i", "Message body $i");
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("List dengan Banyak Item"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            ),
          );
        },
      ),
    );
  }
}

