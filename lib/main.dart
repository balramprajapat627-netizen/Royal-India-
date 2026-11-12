import 'package:flutter/material.dart';

void main() => runApp(const RoyalIndiaApp());

const navy = Color(0xFF123B70);
const blue = Color(0xFF2878D0);
const pale = Color(0xFFF2F7FD);

class RoyalIndiaApp extends StatefulWidget {
  const RoyalIndiaApp({super.key});
  @override
  State<RoyalIndiaApp> createState() => _RoyalIndiaAppState();
}

class _RoyalIndiaAppState extends State<RoyalIndiaApp> {
  bool hindi = true;
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ROYAL INDIA',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: blue),
      scaffoldBackgroundColor: pale,
      appBarTheme: const AppBarTheme(backgroundColor: navy, foregroundColor: Colors.white),
    ),
    home: HomePage(
      hindi: hindi,
      onLanguage: () => setState(() => hindi = !hindi),
    ),
  );
}

class HomePage extends StatefulWidget {
  final bool hindi;
  final VoidCallback onLanguage;
  const HomePage({super.key, required this.hindi, required this.onLanguage});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tab = 0;
  String t(String hi, String en) => widget.hindi ? hi : en;

  @override
  Widget build(BuildContext context) {
    final titles = [t('होम', 'Home'), t('सेवाएँ', 'Services'), t('प्रोफाइल', 'Profile')];
    return Scaffold(
      appBar: AppBar(
        title: const Row(children: [
          Icon(Icons.workspace_premium, color: Colors.amber),
          SizedBox(width: 8),
          Text('ROYAL INDIA', style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1)),
        ]),
        actions: [
          TextButton(
            onPressed: widget.onLanguage,
            child: Text(widget.hindi ? 'EN' : 'हिंदी',
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: IndexedStack(index: tab, children: [
        _home(context),
        _services(context),
        _profile(context),
      ]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (v) => setState(() => tab = v),
        destinations: [
          NavigationDestination(icon: const Icon(Icons.home_outlined), selectedIcon: const Icon(Icons.home), label: titles[0]),
          NavigationDestination(icon: const Icon(Icons.grid_view_outlined), selectedIcon: const Icon(Icons.grid_view), label: titles[1]),
          NavigationDestination(icon: const Icon(Icons.person_outline), selectedIcon: const Icon(Icons.person), label: titles[2]),
        ],
      ),
    );
  }

  Widget _home(BuildContext context) => ListView(
    padding: const EdgeInsets.all(16),
    children: [
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [navy, blue]),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(t('आपका अपना डिजिटल मंच', 'Your all-in-one digital platform'),
            style: const TextStyle(color: Colors.white70, fontSize: 14)),
          const SizedBox(height: 8),
          Text(t('नमस्ते! स्वागत है', 'Hello! Welcome'),
            style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(t('खेती, खरीदारी, व्यापार और मनोरंजन एक जगह।',
            'Agriculture, shopping, business and fun in one place.'),
            style: const TextStyle(color: Colors.white, height: 1.4)),
        ]),
      ),
      const SizedBox(height: 20),
      Text(t('मुख्य सुविधाएँ', 'Main features'),
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: navy)),
      const SizedBox(height: 12),
      GridView.count(
        crossAxisCount: 2, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: 1.25,
        children: [
          _tile(context, '♠️', t('कार्ड गेम', 'Card Games'), t('मनोरंजन के लिए', 'For entertainment'), const Color(0xFFE8F0FF),
            () => _open(context, t('कार्ड गेम', 'Card Games'), ['रम्मी / Rummy', 'तीन पत्ती / Teen Patti', 'पोकर / Poker', 'सॉलिटेयर / Solitaire', 'ब्लैकजैक / Blackjack'],
              t('ये गेम केवल मनोरंजन के लिए हैं। असली पैसे का दाँव या निकासी उपलब्ध नहीं है।',
                'Games are for entertainment only. No real-money betting or cash-out.'))),
          _tile(context, '💰', t('कमाई के अवसर', 'Earning'), t('काम और अवसर', 'Work opportunities'), const Color(0xFFE9F8EF),
            () => _open(context, t('कमाई के अवसर', 'Earning'), ['स्थानीय नौकरी / Local jobs', 'कौशल और प्रशिक्षण / Skills & training', 'व्यवसाय के विचार / Business ideas'],
              t('यहाँ केवल जानकारी दी जाएगी। कमाई की गारंटी नहीं है और किसी को पहले पैसे न दें।',
                'Information only; income is not guaranteed. Never pay upfront to an unknown party.'))),
          _tile(context, '🌾', t('कृषि सेवा', 'Agriculture'), t('फसल और योजनाएँ', 'Crops & schemes'), const Color(0xFFF1F8E8),
            () => _open(context, t('कृषि सेवा', 'Agriculture'), ['फसल सलाह / Crop guidance', 'बीज और खाद / Seeds & fertilizer', 'सरकारी योजनाएँ / Government schemes', 'मंडी भाव / Market prices'],
              t('योजना, सब्सिडी और मंडी भाव की जानकारी आधिकारिक स्रोत से जाँचकर ही मानें।',
                'Verify scheme, subsidy and market-price details with official sources.'))),
          _tile(context, '🛒', t('शॉपिंग', 'Shopping'), t('खरीदें और बेचें', 'Buy & sell'), const Color(0xFFFFF3E5),
            () => _open(context, t('शॉपिंग', 'Shopping'), ['उत्पाद देखें / Browse products', 'अपना सामान बेचें / Sell an item', 'ऑर्डर / Orders'],
              t('अभी यह डेमो है; भुगतान और डिलीवरी चालू नहीं हैं।',
                'Demo only; payments and delivery are not enabled.'))),
          _tile(context, '🏪', t('बिजनेस', 'Business'), t('अपना काम सँभालें', 'Manage your work'), const Color(0xFFF3ECFF),
            () => _open(context, t('बिजनेस', 'Business'), ['दुकान प्रोफाइल / Shop profile', 'ग्राहक सूची / Customers', 'बिक्री रिकॉर्ड / Sales records', 'खर्च और हिसाब / Expenses'],
              t('व्यापार प्रबंधन के टूल आगे जोड़े जा सकते हैं।',
                'Business-management tools can be added next.'))),
        ],
      ),
      const SizedBox(height: 18),
      const Text('ROYAL INDIA • Version 1.0 prototype',
        textAlign: TextAlign.center, style: TextStyle(color: Colors.blueGrey, fontSize: 12)),
    ],
  );

  Widget _services(BuildContext context) => ListView(
    padding: const EdgeInsets.all(16),
    children: [
      Text(t('सभी सेवाएँ', 'All services'), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: navy)),
      const SizedBox(height: 12),
      for (final item in [
        ['♠️', t('कार्ड गेम', 'Card Games'), t('बिना असली पैसे के', 'No real-money play')],
        ['💰', t('कमाई के अवसर', 'Earning'), t('नौकरी और कौशल', 'Jobs and skills')],
        ['🌾', t('कृषि सेवा', 'Agriculture'), t('खेती और सरकारी योजनाएँ', 'Farming and schemes')],
        ['🛒', t('शॉपिंग', 'Shopping'), t('खरीदें और बेचें', 'Buy and sell')],
        ['🏪', t('बिजनेस', 'Business'), t('दुकान और हिसाब', 'Shop and accounts')],
      ])
        Card(child: ListTile(leading: Text(item[0], style: const TextStyle(fontSize: 28)),
          title: Text(item[1], style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(item[2]), trailing: const Icon(Icons.chevron_right))),
    ],
  );

  Widget _profile(BuildContext context) => ListView(
    padding: const EdgeInsets.all(16),
    children: [
      const CircleAvatar(radius: 42, backgroundColor: blue, child: Icon(Icons.person, color: Colors.white, size: 42)),
      const SizedBox(height: 12),
      Text(t('आपकी प्रोफाइल', 'Your profile'), textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: navy)),
      const SizedBox(height: 18),
      _profileField(t('पूरा नाम', 'Full name'), t('अपना नाम दर्ज करें', 'Enter your name'), Icons.badge),
      _profileField(t('मोबाइल नंबर', 'Mobile number'), t('OTP लॉगिन आगे जोड़ा जाएगा', 'OTP sign-in to be connected'), Icons.phone),
      _profileField(t('गाँव / शहर', 'Village / City'), t('वैकल्पिक', 'Optional'), Icons.location_city),
      _profileField(t('तहसील और जिला', 'Tehsil and district'), t('वैकल्पिक', 'Optional'), Icons.map),
      const SizedBox(height: 10),
      const Text('नोट: यह शुरुआती डेमो है। जानकारी अभी सर्वर पर सेव नहीं होती।',
        style: TextStyle(color: Colors.blueGrey)),
    ],
  );

  Widget _profileField(String label, String hint, IconData icon) => Card(
    child: ListTile(leading: Icon(icon, color: blue), title: Text(label),
      subtitle: Text(hint), trailing: const Icon(Icons.edit_outlined)),
  );

  Widget _tile(BuildContext context, String emoji, String title, String subtitle,
      Color color, VoidCallback onTap) => Material(
    color: color, borderRadius: BorderRadius.circular(18),
    child: InkWell(borderRadius: BorderRadius.circular(18), onTap: onTap,
      child: Padding(padding: const EdgeInsets.all(14), child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 29)),
          const SizedBox(height: 7),
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: navy)),
          const SizedBox(height: 3),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.black54)),
        ],
      )),
    ),
  );

  void _open(BuildContext context, String title, List<String> options, String note) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(title: title, options: options, note: note)));
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final List<String> options;
  final String note;

  const DetailPage({
    super.key,
    required this.title,
    required this.options,
    required this.note,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(title)),
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        for (final option in options)
          Card(
            child: ListTile(
              title: Text(option),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => InfoPage(title: option),
                ),
              ),
            ),
          ),
        const SizedBox(height: 12),
        Text(note),
      ],
    ),
  );
}

class InfoPage extends StatelessWidget {
  final String title;

  const InfoPage({super.key, required this.title});

  String get information {
    if (title.contains('फसल')) {
      return 'फसल की अच्छी पैदावार के लिए मिट्टी की जाँच, उचित सिंचाई और सही समय पर खाद का उपयोग जरूरी है।';
    }
    if (title.contains('बीज')) {
      return 'हमेशा प्रमाणित बीज खरीदें। बीज की किस्म और समाप्ति तिथि जाँचें।';
    }
    if (title.contains('योजनाएँ')) {
      return 'किसान सम्मान निधि, फसल बीमा और कृषि सब्सिडी की जानकारी यहाँ उपलब्ध होगी।';
    }
    if (title.contains('मंडी')) {
      return 'मंडी भाव रोज बदलते हैं। बिक्री से पहले स्थानीय मंडी में भाव की पुष्टि करें।';
    }
    return 'इस सुविधा की जानकारी जल्द जोड़ी जाएगी।';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(title)),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        information,
        style: const TextStyle(fontSize: 18, height: 1.6),
      ),
    ),
  );
}
