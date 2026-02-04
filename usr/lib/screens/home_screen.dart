import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andaimelis'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner de Boas-vindas
            Container(
              width: double.infinity,
              height: 200,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apartment, size: 64, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 16),
                  Text(
                    'Bem-vindo à Andaimelis',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                  const Text('Construindo o futuro com segurança.'),
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Notícias e Atualizações',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Lista de Notícias (Mock)
            _buildNewsCard(
              context,
              'Novo Projeto Iniciado',
              'Iniciamos as obras do complexo industrial na Zona Norte.',
              'Há 2 dias',
            ),
            _buildNewsCard(
              context,
              'Prêmio de Segurança',
              'A Andaimelis recebeu o selo Ouro de segurança no trabalho.',
              'Há 1 semana',
            ),
            _buildNewsCard(
              context,
              'Expansão da Frota',
              'Novos equipamentos adquiridos para atender grandes demandas.',
              'Há 2 semanas',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, String title, String subtitle, String date) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: const Icon(Icons.article, color: Colors.white),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            const SizedBox(height: 4),
            Text(date, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}
