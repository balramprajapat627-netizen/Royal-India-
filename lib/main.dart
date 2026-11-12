import 'package:flutter/material.dart';

void main() => runApp(const RoyalIndiaApp());

const navy = Color(0xFF102B50);
const blue = Color(0xFF174C85);
const gold = Color(0xFFD6AD55);
const pale = Color(0xFFF4F6FA);

class AgriTopic {
  final String category;
  final String title;
  final String description;
  const AgriTopic(this.category, this.title, this.description);
}

const topics = <AgriTopic>[
  AgriTopic('फसल', 'सोयाबीन की खेती', 'समय पर बुवाई करें। खेत में उचित नमी रखें। प्रमाणित बीज और क्षेत्र के अनुसार अनुशंसित किस्म चुनें।'),
  AgriTopic('फसल', 'गेहूँ की खेती', 'समतल खेत में उचित नमी होने पर बुवाई करें। बीज दर और खाद की मात्रा मिट्टी तथा कृषि सलाह के अनुसार रखें।'),
  AgriTopic('फसल', 'मक्का की खेती', 'मक्का की बुवाई उचित तापमान और नमी में करें। जल निकास अच्छा रखें और खरपतवार नियंत्रण करें।'),
  AgriTopic('फसल', 'चना की खेती', 'चना कम पानी वाली फसल है। खेत में जलभराव न होने दें और रोगग्रस्त पौधों पर नजर रखें।'),
  AgriTopic('फसल', 'सरसों की खेती', 'समय पर बुवाई और संतुलित खाद जरूरी है। फूल आने के समय खेत की नियमित निगरानी करें।'),
  AgriTopic('फसल', 'लहसुन की खेती', 'स्वस्थ कलियों का चयन करें। भुरभुरी मिट्टी और उचित जल निकास वाली भूमि चुनें।'),
  AgriTopic('फसल', 'प्याज की खेती', 'अच्छी पौध तैयार करें। रोपाई के बाद नमी बनाए रखें और खेत में पानी जमा न होने दें।'),
  AgriTopic('फसल', 'आलू की खेती', 'स्वस्थ बीज आलू लगाएँ। मिट्टी चढ़ाने और सिंचाई का समय फसल की अवस्था के अनुसार रखें।'),
  AgriTopic('फसल', 'कपास की खेती', 'उचित दूरी पर बुवाई करें। गुलाबी सुंडी और अन्य कीटों की नियमित निगरानी करें।'),
  AgriTopic('फसल', 'मूंग की खेती', 'कम अवधि वाली मूंग में समय पर बुवाई और खरपतवार नियंत्रण से लाभ मिल सकता है।'),

  AgriTopic('बीज', 'प्रमाणित बीज कैसे चुनें', 'बीज खरीदते समय पैकेट की सील, किस्म, लॉट नंबर, अंकुरण प्रतिशत और अंतिम तिथि जाँचें।'),
  AgriTopic('बीज', 'बीज उपचार', 'फसल के अनुसार अनुशंसित बीज उपचार अपनाएँ। रसायन के लेबल और सुरक्षा निर्देशों का पालन करें।'),
  AgriTopic('बीज', 'अंकुरण परीक्षण', 'कुछ बीजों को नम कपड़े में रखकर अंकुरण जाँचें। कम अंकुरण होने पर बीज बदलने पर विचार करें।'),
  AgriTopic('बीज', 'बीज भंडारण', 'बीज को सूखी, ठंडी और साफ जगह पर रखें। नमी और चूहों से बचाएँ।'),
  AgriTopic('बीज', 'उन्नत किस्म का चुनाव', 'अपने जिले की जलवायु, मिट्टी और पानी के अनुसार कृषि विभाग की अनुशंसित किस्म चुनें।'),

  AgriTopic('खाद', 'मिट्टी की जाँच', 'मिट्टी का नमूना प्रयोगशाला में जाँच कराएँ। रिपोर्ट के अनुसार खाद और पोषक तत्वों का उपयोग करें।'),
  AgriTopic('खाद', 'यूरिया का उपयोग', 'यूरिया की मात्रा फसल और मिट्टी की रिपोर्ट के अनुसार रखें। जरूरत से ज्यादा उपयोग न करें।'),
  AgriTopic('खाद', 'डीएपी खाद', 'डीएपी में नाइट्रोजन और फास्फोरस होते हैं। इसकी जरूरत मिट्टी परीक्षण और फसल की अनुशंसा से तय करें।'),
  AgriTopic('खाद', 'एनपीके खाद', 'एनपीके खाद में नाइट्रोजन, फास्फोरस और पोटाश होते हैं। सही अनुपात फसल के अनुसार चुनें।'),
  AgriTopic('खाद', 'जैविक खाद', 'गोबर की अच्छी सड़ी खाद और कम्पोस्ट मिट्टी की संरचना सुधारने में मदद कर सकते हैं।'),

  AgriTopic('रोग', 'सोयाबीन में पीला पड़ना', 'पत्तियाँ पीली होने के कई कारण हो सकते हैं, जैसे पोषक तत्वों की कमी, जलभराव या रोग। पहले कारण पहचानें।'),
  AgriTopic('रोग', 'गेहूँ में पीला रतुआ', 'पत्तियों पर पीली धारियाँ दिख सकती हैं। खेत का निरीक्षण करें और कृषि विशेषज्ञ से पुष्टि कराएँ।'),
  AgriTopic('रोग', 'मक्का में पत्ती रोग', 'पत्तियों पर धब्बे या सूखापन दिखने पर प्रभावित पौधों की पहचान करें और विशेषज्ञ की सलाह लें।'),
  AgriTopic('रोग', 'चना में उकठा रोग', 'पौधे मुरझाने लगते हैं। फसल चक्र अपनाएँ और रोगमुक्त बीज का उपयोग करें।'),
  AgriTopic('रोग', 'सरसों में सफेद रतुआ', 'पत्तियों और अन्य भागों पर सफेद फफोले दिख सकते हैं। रोग की पुष्टि के बाद ही नियंत्रण करें।'),

  AgriTopic('कीट', 'सोयाबीन में इल्ली', 'पत्तियों और फलियों का निरीक्षण करें। कीट की पहचान और संख्या के आधार पर सलाह लें।'),
  AgriTopic('कीट', 'मक्का में तना छेदक', 'पौधों के बीच और पत्तियों पर लक्षण देखें। प्रभावित पौधों की निगरानी करें।'),
  AgriTopic('कीट', 'कपास में गुलाबी सुंडी', 'फूल और टिंडे की जाँच करें। फेरोमोन ट्रैप और अन्य एकीकृत उपायों पर कृषि सलाह लें।'),
  AgriTopic('कीट', 'चना में फली छेदक', 'फूल और फलियों पर नजर रखें। आर्थिक क्षति स्तर के आधार पर नियंत्रण का निर्णय लें।'),
  AgriTopic('कीट', 'माहू कीट नियंत्रण', 'पत्तियों के नीचे छोटे कीट दिखाई दे सकते हैं। मित्र कीटों को बचाएँ और विशेषज्ञ सलाह लें।'),

  AgriTopic('सिंचाई', 'ड्रिप सिंचाई', 'ड्रिप से पानी सीधे जड़ों तक पहुँचता है। फिल्टर साफ रखें और पानी की जरूरत के अनुसार सिंचाई करें।'),
  AgriTopic('सिंचाई', 'स्प्रिंकलर सिंचाई', 'स्प्रिंकलर पानी का समान वितरण करने में मदद करता है। हवा और मौसम के अनुसार समय चुनें।'),
  AgriTopic('सिंचाई', 'खेत में जल निकास', 'अधिक पानी निकालने के लिए उचित नालियाँ बनाएँ। जलभराव से जड़ों को नुकसान हो सकता है।'),
  AgriTopic('सिंचाई', 'कम पानी में खेती', 'कम पानी वाली फसलें, मल्चिंग और खेत में नमी संरक्षण के उपाय अपनाएँ।'),
  AgriTopic('सिंचाई', 'फसल में सिंचाई का समय', 'फसल की अवस्था, मिट्टी और मौसम के अनुसार सिंचाई करें। अनावश्यक पानी न दें।'),

  AgriTopic('मशीन', 'ट्रैक्टर की देखभाल', 'इंजन ऑयल, फिल्टर, टायर और ब्रेक की नियमित जाँच करें। सर्विस समय पर कराएँ।'),
  AgriTopic('मशीन', 'सीड ड्रिल मशीन', 'बुवाई से पहले मशीन की सफाई और बीज गिरने की मात्रा जाँचें।'),
  AgriTopic('मशीन', 'स्प्रे पंप', 'स्प्रे से पहले नोजल और पाइप जाँचें। छिड़काव के समय सुरक्षा उपकरण पहनें।'),
  AgriTopic('मशीन', 'हार्वेस्टर', 'कटाई से पहले मशीन की सेटिंग और सुरक्षा व्यवस्था जाँचें।'),
  AgriTopic('मशीन', 'थ्रेशर सुरक्षा', 'चलती मशीन से दूरी रखें। ढीले कपड़े न पहनें और सुरक्षा गार्ड न हटाएँ।'),

  AgriTopic('व्यवसाय', 'किसान उत्पादक संगठन', 'किसान समूह बनाकर खरीद, बिक्री और भंडारण की लागत कम करने के अवसर तलाश सकते हैं।'),
  AgriTopic('व्यवसाय', 'अनाज भंडारण', 'अनाज को अच्छी तरह सुखाकर साफ और सुरक्षित स्थान पर रखें। नमी और कीट से बचाएँ।'),
  AgriTopic('व्यवसाय', 'नर्सरी व्यवसाय', 'स्वस्थ पौधे तैयार करें। स्थानीय मांग, पानी और बाजार का पहले आकलन करें।'),
  AgriTopic('व्यवसाय', 'डेयरी व्यवसाय', 'पशुओं के चारे, स्वास्थ्य, साफ पानी और बाजार की व्यवस्था पहले तय करें।'),
  AgriTopic('व्यवसाय', 'बकरी पालन', 'उचित नस्ल, साफ शेड, टीकाकरण और चारे की व्यवस्था जरूरी है।'),

  AgriTopic('योजना', 'पीएम किसान योजना', 'पात्र किसानों के लिए आर्थिक सहायता योजना है। पात्रता और किस्त की जानकारी आधिकारिक पोर्टल पर जाँचें।'),
  AgriTopic('योजना', 'फसल बीमा योजना', 'फसल नुकसान की स्थिति में योजना की शर्तें, अधिसूचित फसल और आवेदन की अंतिम तिथि जाँचें।'),
  AgriTopic('योजना', 'किसान क्रेडिट कार्ड', 'खेती से जुड़े खर्चों के लिए बैंक से किसान क्रेडिट कार्ड की पात्रता और ब्याज शर्तें पूछें।'),
  AgriTopic('योजना', 'कृषि यंत्र सब्सिडी', 'कृषि यंत्र अनुदान के लिए राज्य के कृषि विभाग की पात्रता, आवेदन समय और नियम देखें।'),
  AgriTopic('योजना', 'मंडी में फसल बिक्री', 'बिक्री से पहले गुणवत्ता, तौल, कटौती और भुगतान की शर्तें समझें। स्थानीय मंडी भाव की पुष्टि करें।'),
];

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
      scaffoldBackgroundColor: pale,
      colorScheme: ColorScheme.fromSeed(seedColor: blue),
      appBarTheme: const AppBarTheme(
        backgroundColor: navy,
        foregroundColor: Colors.white,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
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
    final labels = [t('होम', 'Home'), t('सेवाएँ', 'Services'), t('प्रोफाइल', 'Profile')];
    return Scaffold(
      appBar: AppBar(
        title: const Row(children: [
          Icon(Icons.workspace_premium, color: gold),
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
        _home(),
        _services(),
        _profile(),
      ]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (v) => setState(() => tab = v),
        destinations: [
          NavigationDestination(icon: const Icon(Icons.home_outlined), label: labels[0]),
          NavigationDestination(icon: const Icon(Icons.grid_view), label: labels[1]),
          NavigationDestination(icon: const Icon(Icons.person_outline), label: labels[2]),
        ],
      ),
    );
  }

  Widget _home() => ListView(
    padding: const EdgeInsets.all(16),
    children: [
      Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [navy, blue]),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: gold, width: 1.5),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(Icons.workspace_premium, color: gold, size: 34),
          const SizedBox(height: 8),
          Text(t('आपका अपना डिजिटल मंच', 'Your digital platform'),
            style: const TextStyle(color: Colors.white70)),
          const SizedBox(height: 5),
          Text(t('नमस्ते! स्वागत है', 'Welcome to Royal India'),
            style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 7),
          Text(t('खेती, व्यापार, खरीदारी और जानकारी एक जगह।',
            'Agriculture, business, shopping and information in one place.'),
            style: const TextStyle(color: Colors.white, height: 1.5)),
        ]),
      ),
      const SizedBox(height: 22),
      Text(t('मुख्य सुविधाएँ', 'Main services'),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: navy)),
      const SizedBox(height: 12),
      GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.15,
        children: [
          _tile('🌾', t('कृषि सेवा', 'Agriculture'), t('50 विषयों की जानकारी', '50 useful topics'),
            const Color(0xFFEAF5E5), () => _agriculture()),
          _tile('💰', t('कमाई के अवसर', 'Earning'), t('नौकरी और कौशल', 'Jobs and skills'),
            const Color(0xFFE9F8EF), () => _info(t('कमाई के अवसर', 'Earning'),
            'स्थानीय नौकरी, कौशल प्रशिक्षण और स्वरोजगार के अवसर खोजें। किसी अनजान व्यक्ति को नौकरी के नाम पर पहले पैसे न दें।')),
          _tile('🛒', t('शॉपिंग', 'Shopping'), t('खरीदें और बेचें', 'Buy and sell'),
            const Color(0xFFFFF2E2), () => _info(t('शॉपिंग', 'Shopping'),
            'यह शुरुआती जानकारी पेज है। ऑनलाइन भुगतान, ऑर्डर और डिलीवरी अभी चालू नहीं हैं।')),
          _tile('🏪', t('बिजनेस', 'Business'), t('व्यापार और हिसाब', 'Business tools'),
            const Color(0xFFF1EBFF), () => _info(t('बिजनेस', 'Business'),
            'दुकान, ग्राहक, बिक्री, खर्च और छोटे व्यवसाय के विचारों की जानकारी यहाँ मिलेगी।')),
          _tile('🏛️', t('सरकारी योजनाएँ', 'Government schemes'), t('योजना की जानकारी', 'Scheme information'),
            const Color(0xFFEAF0FF), () => _category('योजना')),
          _tile('📊', t('मंडी भाव', 'Market prices'), t('भाव की जानकारी', 'Price information'),
            const Color(0xFFFFF6DD), () => _info(t('मंडी भाव', 'Market prices'),
            'मंडी भाव रोज बदलते हैं। फसल बेचने से पहले अपनी नजदीकी मंडी या आधिकारिक स्रोत से आज का भाव जरूर जाँचें।')),
        ],
      ),
      const SizedBox(height: 18),
      const Center(child: Text('ROYAL INDIA • VERSION 2.0',
        style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 12))),
    ],
  );

  Widget _tile(String emoji, String title, String subtitle, Color color, VoidCallback action) =>
    Material(
      color: color,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: action,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(emoji, style: const TextStyle(fontSize: 30)),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: navy, fontSize: 16)),
              const SizedBox(height: 4),
              Text(subtitle, style: const TextStyle(color: Colors.black54, fontSize: 12)),
            ],
          ),
        ),
      ),
    );

  Widget _services() => ListView(
    padding: const EdgeInsets.all(16),
    children: [
      const Text('सभी सेवाएँ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: navy)),
      const SizedBox(height: 12),
      _service('🌾', 'कृषि सेवा', '50 कृषि विषय', _agriculture),
      _service('💰', 'कमाई के अवसर', 'नौकरी और कौशल', () => _info('कमाई के अवसर', 'नौकरी, कौशल प्रशिक्षण और स्वरोजगार की जानकारी। नौकरी के लिए किसी को पहले पैसे न दें।')),
      _service('🛒', 'शॉपिंग', 'खरीदें और बेचें', () => _info('शॉपिंग', 'यह डेमो पेज है। भुगतान और डिलीवरी अभी उपलब्ध नहीं हैं।')),
      _service('🏪', 'बिजनेस', 'व्यापार और हिसाब', () => _info('बिजनेस', 'छोटे व्यापार, दुकान प्रबंधन और खर्च का हिसाब रखने की जानकारी।')),
      _service('🏛️', 'सरकारी योजनाएँ', 'किसान और नागरिक योजनाएँ', () => _category('योजना')),
      _service('📊', 'मंडी भाव', 'फसल के बाजार भाव', () => _info('मंडी भाव', 'भाव की पुष्टि स्थानीय मंडी या आधिकारिक स्रोत से करें। लाइव भाव अभी उपलब्ध नहीं हैं।')),
    ],
  );

  Widget _service(String icon, String title, String subtitle, VoidCallback action) =>
    Card(child: ListTile(
      leading: Text(icon, style: const TextStyle(fontSize: 28)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right, color: gold),
      onTap: action,
    ));

  Widget _profile() => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      const CircleAvatar(radius: 45, backgroundColor: navy,
        child: Icon(Icons.person, color: gold, size: 48)),
      const SizedBox(height: 14),
      const Center(child: Text('आपकी प्रोफाइल',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: navy))),
      const SizedBox(height: 18),
      const Card(child: ListTile(leading: Icon(Icons.badge, color: blue),
        title: Text('पूरा नाम'), subtitle: Text('प्रोफाइल सुविधा अगले चरण में जोड़ी जाएगी।'))),
      const Card(child: ListTile(leading: Icon(Icons.phone, color: blue),
        title: Text('मोबाइल नंबर'), subtitle: Text('OTP लॉगिन अभी उपलब्ध नहीं है।'))),
      const Card(child: ListTile(leading: Icon(Icons.location_city, color: blue),
        title: Text('गाँव / शहर'), subtitle: Text('स्थान की जानकारी आगे जोड़ी जाएगी।'))),
      const SizedBox(height: 12),
      const Text('यह शुरुआती संस्करण है। आपकी जानकारी अभी सर्वर पर सेव नहीं होती।',
        textAlign: TextAlign.center, style: TextStyle(color: Colors.blueGrey)),
    ],
  );

  void _agriculture() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const AgriculturePage()));
  }

  void _category(String category) {
    Navigator.push(context, MaterialPageRoute(
      builder: (_) => AgriculturePage(initialCategory: category)));
  }

  void _info(String title, String description) {
    Navigator.push(context, MaterialPageRoute(
      builder: (_) => InfoPage(title: title, description: description)));
  }
}

class AgriculturePage extends StatefulWidget {
  final String? initialCategory;
  const AgriculturePage({super.key, this.initialCategory});

  @override
  State<AgriculturePage> createState() => _AgriculturePageState();
}

class _AgriculturePageState extends State<AgriculturePage> {
  final search = TextEditingController();
  String selected = 'सभी';

  final categories = ['सभी', 'फसल', 'बीज', 'खाद', 'रोग', 'कीट', 'सिंचाई', 'मशीन', 'व्यवसाय', 'योजना'];

  @override
  void initState() {
    super.initState();
    if (widget.initialCategory != null) selected = widget.initialCategory!;
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = topics.where((item) {
      final matchesCategory = selected == 'सभी' || item.category == selected;
      final q = search.text.toLowerCase();
      final matchesSearch = item.title.toLowerCase().contains(q) ||
          item.description.toLowerCase().contains(q) ||
          item.category.toLowerCase().contains(q);
      return matchesCategory && matchesSearch;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('कृषि ज्ञान केंद्र')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 14, 14, 8),
          child: TextField(
            controller: search,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              hintText: 'फसल, खाद, बीज खोजें...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none),
            ),
          ),
        ),
        SizedBox(
          height: 48,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: categories.map((c) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ChoiceChip(
                label: Text(c),
                selected: selected == c,
                selectedColor: gold,
                onSelected: (_) => setState(() => selected = c),
              ),
            )).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(children: [
            const Icon(Icons.eco, color: blue),
            const SizedBox(width: 8),
            Text('${filtered.length} विषय उपलब्ध',
              style: const TextStyle(fontWeight: FontWeight.bold, color: navy)),
          ]),
        ),
        Expanded(
          child: filtered.isEmpty
              ? const Center(child: Text('कोई जानकारी नहीं मिली।'))
              : ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
                  itemCount: filtered.length,
                  itemBuilder: (context, index) {
                    final item = filtered[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color(0xFFFFF3D5),
                          child: Text('${index + 1}', style: const TextStyle(color: navy)),
                        ),
                        title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(item.category),
                        trailing: const Icon(Icons.chevron_right, color: gold),
                        onTap: () => Navigator.push(context, MaterialPageRoute(
                          builder: (_) => InfoPage(title: item.title, description: item.description))),
                      ),
                    );
                  },
                ),
        ),
      ]),
    );
  }
}

class InfoPage extends StatelessWidget {
  final String title;
  final String description;
  const InfoPage({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(title)),
    body: ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Icon(Icons.menu_book, color: gold, size: 48),
        const SizedBox(height: 16),
        Text(title, style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: navy)),
        const SizedBox(height: 14),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text(description, style: const TextStyle(fontSize: 17, height: 1.7)),
          ),
        ),
        const SizedBox(height: 14),
        const Text('महत्वपूर्ण: खेती में दवा, खाद और छिड़काव का निर्णय स्थानीय मौसम, फसल की अवस्था और कृषि विशेषज्ञ की सलाह के अनुसार करें।',
          style: TextStyle(color: Colors.blueGrey, height: 1.5)),
      ],
    ),
  );
}
