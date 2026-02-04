import 'package:flutter/material.dart';

class HrScreen extends StatelessWidget {
  const HrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RH e Vagas'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue[50],
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Junte-se ao nosso time! Confira as vagas disponíveis ou envie seu currículo para nosso banco de talentos.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Ação de enviar currículo (futuro)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Funcionalidade de envio de CV em breve!')),
                    );
                  },
                  child: const Text('Enviar CV'),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'Vagas Abertas',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _buildJobCard(context, 'Engenheiro Civil Sênior', 'São Paulo, SP', 'CLT - Presencial'),
                _buildJobCard(context, 'Técnico em Segurança do Trabalho', 'Rio de Janeiro, RJ', 'CLT - Híbrido'),
                _buildJobCard(context, 'Assistente Administrativo', 'Belo Horizonte, MG', 'Estágio'),
                _buildJobCard(context, 'Mestre de Obras', 'Curitiba, PR', 'PJ - Projeto'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
           // Contato direto com RH
        },
        icon: const Icon(Icons.chat),
        label: const Text('Falar com RH'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }

  Widget _buildJobCard(BuildContext context, String title, String location, String type) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0D47A1))),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(location, style: TextStyle(color: Colors.grey[600])),
                const SizedBox(width: 16),
                Icon(Icons.work, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(type, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Ver Detalhes e Aplicar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
