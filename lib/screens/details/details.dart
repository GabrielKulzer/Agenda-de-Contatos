import 'package:agenda_de_contatos/models/contact.dart';
import 'package:agenda_de_contatos/style.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Contact _contact;

  Details(this._contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_contact.isFavorite) ? Icon(Icons.star) : Icon(Icons.star_outline),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(_contact.photo),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 20,
              ),
              child: Text(
                _contact.name,
                style: TextStyle(
                  color: grayTheme,
                  fontSize: 24,
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: blueTheme,
                      size: 30,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Ligar",
                      style: TextStyle(
                        fontSize: 10,
                        color: blueTheme,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      color: blueTheme,
                      size: 30,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Mensagem SMS",
                      style: TextStyle(
                        fontSize: 10,
                        color: blueTheme,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.videocam_outlined,
                      color: blueTheme,
                      size: 30,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Vídeo",
                      style: TextStyle(
                        fontSize: 10,
                        color: blueTheme,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: blueTheme,
                      size: 30,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Enviar email",
                      style: TextStyle(
                        fontSize: 10,
                        color: blueTheme,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: blueTheme,
                      size: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          _contact.phone,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Celular",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: blueTheme,
                    size: 20,
                  ),
                  Text(
                    _contact.email,
                    style: TextStyle(
                      fontSize: 10,
                      color: blueTheme,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
