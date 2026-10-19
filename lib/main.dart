
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Feed(),
));

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final fotos = [
    'image/aranha.jpeg',
    'image/batman.jpg',
    'image/gold.jpg',
  ];

  final legendas = [
    'A aranha observa o mundo em silêncio.',
    'Batman pronto para agir no escuro.',
    'Uma peça dourada com brilho intenso.',
  ];

  final curtidas = [12, 25, 8];
  final gostei = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu Feed')),
      body: ListView.builder(
        itemCount: fotos.length,
        itemBuilder: (context, i) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('Aluno do curso'),
            ),
            Image.asset(
              fotos[i],
              width: 600,
              height: 900,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Legenda: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: legendas[i],
                      style: const TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    gostei[i] ? Icons.favorite : Icons.favorite_border,
                    color: gostei[i] ? Colors.red : null,
                  ),
                  onPressed: () => setState(() {
                    gostei[i] = !gostei[i];
                    curtidas[i] += gostei[i] ? 1 : -1;
                  }),
                ),
                IconButton(
                  icon: const Icon(Icons.comment_outlined),
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Botão comentar')),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.share_outlined),
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Botão compartilhar')),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('${curtidas[i]} curtidas'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
