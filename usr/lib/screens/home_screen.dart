import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andaimelis'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Sem novas notificações')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner de Boas-vindas com Gradiente
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.apartment, size: 48, color: Colors.white),
                  const SizedBox(height: 16),
                  Text(
                    'Bem-vindo à Andaimelis',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Construindo o futuro com segurança e inovação.',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navegar para projetos ou sobre
                      DefaultTabController.of(context).animateTo(1); // Exemplo: ir para aba Empresa
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Conheça Nossos Projetos'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Destaques & Notícias',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.trending_up, color: Colors.grey),
                ],
              ),
            ),

            // Lista de Notícias (Mock)
            _buildNewsCard(
              context,
              'Novo Projeto Iniciado',
              'Iniciamos as obras do complexo industrial na Zona Norte, com previsão de entrega para 2026.',
              'Há 2 dias',
              Icons.engineering,
            ),
            _buildNewsCard(
              context,
              'Prêmio de Segurança',
              'A Andaimelis recebeu o selo Ouro de segurança no trabalho pelo 3º ano consecutivo.',
              'Há 1 semana',
              Icons.verified_user,
            ),
            _buildNewsCard(
              context,
              'Expansão da Frota',
              'Novos equipamentos de alta tecnologia adquiridos para atender grandes demandas de infraestrutura.',
              'Há 2 semanas',
              Icons.local_shipping,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, String title, String subtitle, String date, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: Colors.grey[700], fontSize: 14)),
                  const SizedBox(height: 8),
                  Text(date, style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
