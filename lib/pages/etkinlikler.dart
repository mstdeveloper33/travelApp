import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/model/event_model.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/pages/etkinlikler_detay_page.dart';
import 'package:travelapp/data.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/light_theme.dart';
import 'package:travelapp/theme/theme_provider.dart';
import 'package:share_plus/share_plus.dart'; // Yeni eklenen import

class EtkinliklerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Event> events = getEvents();
    final themeProvider = Provider.of<ThemeProvider>(context);

    void shareEvent() {
      const String url = 'https://ebis.sakarya.bel.tr/etkinlik-takvimi';
      Share.share('Etkinlikler hakkında daha fazla bilgi için bu bağlantıya göz atın: $url');
    }

    return Scaffold(
      drawer: Drawermenu(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 9,
                "lib/assets/others/sakarya.png", // Burayı kendi logo veya simge yolunuzla değiştirin
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
        title: Text(
          'Etkinlikler',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 15,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              colors: [Colors.teal.shade300, Colors.blue.shade300],
            ),
          ),
        ),
      ),
      body: events.isEmpty
          ? Center(child: Text('Etkinlik bulunamadı.'))
          : ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventDetailPage(event: event),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        shadowColor: Colors.grey,
                        elevation: 10,
                        color: themeProvider.isDarkTheme
                            ? darkTheme.scaffoldBackgroundColor
                            : lightTheme.cardTheme.color,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image(
                                image: event.imageUrls.first.startsWith('http')
                                    ? NetworkImage(event.imageUrls.first)
                                    : AssetImage(event.imageUrls.first)
                                        as ImageProvider,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 240.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      event.name,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.ios_share_rounded),
                                    onPressed: () {
                                      shareEvent();
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text(
                                        "Tarih : ${event.eventDate.toLocal().toString().split(' ')[0]} ",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.event,
                                        size: 25,
                                      ),
                                      Text(event.tur.toString())
                                    ],
                                  ),
                                  Text(
                                    '${event.eventDate.hour.toString()}:${event.eventDate.minute.toString()}',
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                );
              },
            ),
    );
  }
}
