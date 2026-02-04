import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conheça a Empresa'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nossa História',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Fundada com o objetivo de revolucionar o setor de construção e manutenção industrial, a Andaimelis se destaca pela excelência, segurança e inovação em cada projeto.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),
            
            // Missão, Visão, Valores
            _buildInfoCard(context, Icons.flag, 'Missão', 'Entregar soluções de engenharia com qualidade superior e segurança absoluta.'),
            _buildInfoCard(context, Icons.visibility, 'Visão', 'Ser referência nacional em infraestrutura e gestão de obras até 2030.'),
            _buildInfoCard(context, Icons.diamond, 'Valores', 'Ética, Transparência, Segurança e Sustentabilidade.'),

            const SizedBox(height: 24),
            const Text(
              'Nossos Projetos',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            // Galeria de Projetos (Mock)
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildProjectCard(context, 'Refinaria Sul', Colors.grey),
                  _buildProjectCard(context, 'Ponte Estaiada', Colors.blueGrey),
                  _buildProjectCard(context, 'Complexo Solar', Colors.orangeAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, IconData icon, String title, String content) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard(BuildContext context, String name, Color color) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
