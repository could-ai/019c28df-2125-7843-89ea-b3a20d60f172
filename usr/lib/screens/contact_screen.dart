import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contato Corporativo'),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'Diretoria / Investidores'),
              Tab(text: 'Geral'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCorporateForm(context),
            _buildGeneralInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCorporateForm(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Canal Estratégico',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Este canal é exclusivo para investidores, parcerias estratégicas e contato direto com a diretoria.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Nome Completo',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Empresa / Organização',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.business),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'E-mail Corporativo',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            maxLines: 4,
            decoration: const InputDecoration(
              labelText: 'Mensagem',
              border: OutlineInputBorder(),
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Mensagem enviada à diretoria.')),
                );
              },
              child: const Text('Enviar Mensagem'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGeneralInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.phone, color: Colors.blue),
            title: const Text('Telefone'),
            subtitle: const Text('(11) 3000-0000'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.email, color: Colors.blue),
            title: const Text('E-mail Geral'),
            subtitle: const Text('contato@andaimelis.com.br'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.location_on, color: Colors.blue),
            title: const Text('Sede Administrativa'),
            subtitle: const Text('Av. Paulista, 1000 - São Paulo, SP'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
