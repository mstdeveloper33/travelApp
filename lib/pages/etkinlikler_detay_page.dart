import 'package:flutter/material.dart';
import 'package:travelapp/model/event_model.dart';

class EventDetailPage extends StatelessWidget {
  final Event event;

  EventDetailPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              //   title: Text(event.name),
              background: Image(
                image: event.imageUrls.first.startsWith('http')
                    ? NetworkImage(event.detailimage.first)
                    : AssetImage(event.detailimage.first) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
            pinned: true, // AppBar'ı sabitlemek için
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    event.description,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Tarih: ${event.eventDate.toLocal().toString().split(' ')[0]}', // Tarih formatını güncelleme
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
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
