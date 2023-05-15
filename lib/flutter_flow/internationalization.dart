import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // registro
  {
    '8hpf3nyq': {
      'en': '',
      'es': 'Registro',
    },
    'ut6d3pky': {
      'en': '',
      'es': 'Nombre',
    },
    'd0m4501y': {
      'en': 'Option 1',
      'es': 'Opción 1',
    },
    'gcwdqm4g': {
      'en': '',
      'es': '',
    },
    'iam0xgwx': {
      'en': 'Email.',
      'es': 'Correo electrónico.',
    },
    'h5se1v5u': {
      'en': '',
      'es': '',
    },
    'l92pnshd': {
      'en': 'telephone',
      'es': 'teléfono',
    },
    'f0168xw8': {
      'en': '',
      'es': '',
    },
    'x4ly0xvm': {
      'en': 'age',
      'es': 'edad',
    },
    'wg6xicsv': {
      'en': 'sex',
      'es': 'sexo',
    },
    'rzpiwq9p': {
      'en': '',
      'es': 'contraseña',
    },
    'eyfkffka': {
      'en': 'password',
      'es': 'contraseña',
    },
    '2bsu5z7s': {
      'en': '',
      'es': '',
    },
    'jhwb6t7b': {
      'en': 'Term and Condicion',
      'es': 'Término y condiciónes',
    },
    '3ugmx2zp': {
      'en': '',
      'es': 'CONTINUAR',
    },
    'lanj9wte': {
      'en': '',
      'es': 'Si ya tienes una cuenta',
    },
    'momge5oj': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // completeProfile
  {
    'yhcaf7r2': {
      'en': 'Complete Profile',
      'es': 'Perfil completo',
    },
    'r6npjsue': {
      'en': 'Upload a photo for us to easily identify you.',
      'es': 'Sube una foto para que te identifiquemos fácilmente.',
    },
    'sdptn7dd': {
      'en': 'Your Name',
      'es': 'Su nombre',
    },
    'n636qnrx': {
      'en': 'Your Age',
      'es': 'Su edad',
    },
    's7yvjzbs': {
      'en': 'i.e. 34',
      'es': 'es decir, 34',
    },
    '72ii0waq': {
      'en': 'Your Title',
      'es': 'Tu título',
    },
    'pf8glhkg': {
      'en': 'What is your position?',
      'es': '¿Cual es tu posicion?',
    },
    'hbhd3bdt': {
      'en': 'Complete Profile',
      'es': 'Perfil completo',
    },
    'w75dikic': {
      'en': 'Skip for Now',
      'es': 'Saltar por ahora',
    },
    '1eac148w': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    'ew7dbn3s': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    'jhhlgzk5': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
    },
    '4k3jnl38': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // forgotPassword
  {
    'nymdan1x': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'es':
          'Ingrese el correo electrónico asociado con su cuenta y le enviaremos un enlace para restablecer su contraseña.',
    },
    'u4nuk910': {
      'en': '',
      'es': 'direccion email',
    },
    '37kotxi0': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
    },
    '9a7re0cq': {
      'en': '',
      'es': '',
    },
    'hiwpaze1': {
      'en': 'recover password',
      'es': 'recuperar contraseña',
    },
    '598b8d3m': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // onboarding
  {
    'i8hl2uua': {
      'en': 'Create Budgets',
      'es': 'Crear presupuestos',
    },
    'hxtwax0y': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
    },
    'mjy3ljln': {
      'en': 'Keep Track of Spending',
      'es': 'Mantenga un registro de los gastos',
    },
    'uf9k1spp': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
    },
    '9c4outzf': {
      'en': 'Budget Analysis',
      'es': 'Análisis de presupuesto',
    },
    'q30ina4f': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
    },
    'ypt7b97g': {
      'en': 'Create Your Budget',
      'es': 'Crea tu presupuesto',
    },
    'oo0kk9qe': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // createBudgetBegin
  {
    'xod9iwab': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
    },
    'wih71x51': {
      'en': 'Amount',
      'es': 'Cantidad',
    },
    'qk15nsmc': {
      'en': 'Budget Name',
      'es': 'Nombre del presupuesto',
    },
    'iphvcuwc': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'v2shqq3z': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
    },
    'knu0nxbp': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
    },
    '79au6dyg': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
    },
    'cs1cy7tg': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // MY_Card
  {
    'xn2so8km': {
      'en': 'My Card',
      'es': 'Mi tarjeta',
    },
    '6t7n9ugd': {
      'en': 'Balance',
      'es': 'Balance',
    },
    'h3086ma4': {
      'en': '\$7,630',
      'es': '\$7,630',
    },
    'lr97k2rc': {
      'en': '**** 0149',
      'es': '**** 0149',
    },
    'l9racj60': {
      'en': '05/25',
      'es': '25/05',
    },
    '9b0j67se': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'axrvkhrv': {
      'en': '+\$12,402',
      'es': '+\$12,402',
    },
    '0d7w9e0i': {
      'en': '4.5% ',
      'es': '4,5%',
    },
    'mggh8wu7': {
      'en': 'Spending',
      'es': 'Gasto',
    },
    'c5bszisf': {
      'en': '-\$8,392',
      'es': '-\$8,392',
    },
    '85pb8msl': {
      'en': '4.5% ',
      'es': '4,5%',
    },
    'yet7zk5d': {
      'en': 'Quick Service',
      'es': 'Servicio rapido',
    },
    '8bnd6lco': {
      'en': 'Transfer',
      'es': 'Transferir',
    },
    'roobc02h': {
      'en': 'Pause Card',
      'es': 'Tarjeta de pausa',
    },
    '27pb7ji4': {
      'en': 'Transaction',
      'es': 'Transacción',
    },
    'xs4cn7uk': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'm8rhanhc': {
      'en': '•',
      'es': '•',
    },
  },
  // MY_Budgets
  {
    'cd0zp71n': {
      'en': 'My Budget',
      'es': 'Mi presupuesto',
    },
    'hfwbiivj': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'jjj3ydb1': {
      'en': '+\$12,402',
      'es': '+\$12,402',
    },
    'ns4vt604': {
      'en': '4.5% ',
      'es': '4,5%',
    },
    'wcsc04wg': {
      'en': 'Spending',
      'es': 'Gasto',
    },
    'a5zzlh8f': {
      'en': '-\$8,392',
      'es': '-\$8,392',
    },
    '8xnbsdnb': {
      'en': '4.5% ',
      'es': '4,5%',
    },
    'c81i1ybg': {
      'en': 'Total Spent',
      'es': 'Total gastado',
    },
    'ah4t7cpx': {
      'en': 'Advertising Budget',
      'es': 'Presupuesto publicitario',
    },
    '0tsohlub': {
      'en': '\$3,000',
      'es': '\$3,000',
    },
    '5y1u9kxg': {
      'en': '4 Days Left',
      'es': '4 días restantes',
    },
    '4jknsif6': {
      'en': 'Total Spent',
      'es': 'Total gastado',
    },
    'o9rmbnd7': {
      'en': '\$2,502',
      'es': '\$2,502',
    },
    'fn6kvat8': {
      'en': 'Advertising Budget',
      'es': 'Presupuesto publicitario',
    },
    '6uht91yb': {
      'en': '\$3,000',
      'es': '\$3,000',
    },
    '1qm6rhod': {
      'en': '4 Days Left',
      'es': '4 días restantes',
    },
    '65tvvjcw': {
      'en': 'Total Spent',
      'es': 'Total gastado',
    },
    'c03678eq': {
      'en': '\$2,502',
      'es': '\$2,502',
    },
    'ofz2zvlc': {
      'en': '•',
      'es': '•',
    },
  },
  // paymentDetails
  {
    'j0yzgf4n': {
      'en': 'Details',
      'es': 'Detalles',
    },
    'zv72ekdw': {
      'en': 'Amount',
      'es': 'Cantidad',
    },
    '0rjyjwed': {
      'en': 'Vendor',
      'es': 'Proveedor',
    },
    'eeyn6dk2': {
      'en': 'When',
      'es': 'Cuando',
    },
    'lccxx6eu': {
      'en': 'Reason',
      'es': 'Razón',
    },
    'jzyax4hn': {
      'en': 'Spent by',
      'es': 'gastado por',
    },
    'i4r9jqwn': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // MY_profilePage
  {
    'f1bvbey3': {
      'en': 'My Account',
      'es': 'Mi cuenta',
    },
    '9aogde79': {
      'en': 'Home',
      'es': 'Home',
    },
    'i61y9ibx': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
    },
    '03k0vw86': {
      'en': 'Change Password',
      'es': 'Cambiar la contraseña',
    },
    'th57qqr0': {
      'en': 'Add bank account',
      'es': 'Agregar cuenta bancaria',
    },
    '6w6wv95p': {
      'en': 'Notification Settings',
      'es': 'Configuración de las notificaciones',
    },
    'eojlfs66': {
      'en': 'Privacy Policy',
      'es': 'política de privacidad',
    },
    '6qbn3m1s': {
      'en': 'Privacy Policy',
      'es': 'política de privacidad',
    },
    '2ll42t1u': {
      'en': 'Dark Mode',
      'es': 'Modo oscuro',
    },
    '8d386226': {
      'en': 'Light Mode',
      'es': 'Modo de luz',
    },
    '8srr2k0j': {
      'en': '•',
      'es': '•',
    },
  },
  // budgetDetails
  {
    'p0gf1lfy': {
      'en': 'Per Month',
      'es': 'Por mes',
    },
    'ti7ipegi': {
      'en': 'Total Spent',
      'es': 'Total gastado',
    },
    'ifi6fmsa': {
      'en': 'Transactions',
      'es': 'Actas',
    },
    'ak9m8szp': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'l53kroui': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // transferComplete
  {
    'xf8d4sm8': {
      'en': 'Transfer Complete',
      'es': 'transferencia completa',
    },
    'iq9jjji8': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'es':
          'Buen trabajo, transfirió fondos con éxito. Los fondos pueden tardar unos días en salir de su cuenta.',
    },
    'wrbg19ed': {
      'en': 'Okay',
      'es': 'Bueno',
    },
    'ndkybnrt': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // transferFunds
  {
    'pe3o18oh': {
      'en': 'Transfer Funds',
      'es': 'Transferir fondos',
    },
    'kyzwrfh4': {
      'en': 'Balance',
      'es': 'Balance',
    },
    'zq4ozx20': {
      'en': '\$7,630',
      'es': '\$7,630',
    },
    'qukh7yo1': {
      'en': '**** 0149',
      'es': '**** 0149',
    },
    'n87hkr7d': {
      'en': '05/25',
      'es': '25/05',
    },
    '3ct4fj7p': {
      'en': 'Change Account',
      'es': 'Cambiar cuenta',
    },
    'w4smsh2i': {
      'en': 'Internal Transfer',
      'es': 'Transferencia interna',
    },
    '6uxty3hy': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
    },
    'p4ngma0d': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
    },
    'uxo87fjc': {
      'en': 'Transfer Type',
      'es': 'Tipo de transferencia',
    },
    'fddma8xl': {
      'en': 'Select Account',
      'es': 'Seleccionar cuenta',
    },
    '23l6kqgm': {
      'en': 'Account ****2010',
      'es': 'Cuenta ****2010',
    },
    '3hwdfadf': {
      'en': 'Account ****2011',
      'es': 'Cuenta ****2011',
    },
    'xvj00xg1': {
      'en': 'Account ****2012',
      'es': 'Cuenta ****2012',
    },
    'ok5xluvk': {
      'en': 'Choose an Account',
      'es': 'Elige una cuenta',
    },
    'ynie0pc5': {
      'en': '\$ Amount',
      'es': '\$ Monto',
    },
    'wngoi0v4': {
      'en': 'Your new account balance is:',
      'es': 'El nuevo saldo de su cuenta es:',
    },
    'g6bfec2g': {
      'en': '\$7,630',
      'es': '\$7,630',
    },
    'xaw2jdst': {
      'en': 'Send Transfer',
      'es': 'Enviar Transferencia',
    },
    'xku4zxbe': {
      'en': 'Tap above to complete transfer',
      'es': 'Toque arriba para completar la transferencia',
    },
    'imaejg7x': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // requestFunds
  {
    'wv1862li': {
      'en': 'Request Funds',
      'es': 'Pedír fondos',
    },
    'xvj3fan8': {
      'en': '\$ Amount',
      'es': '\$ Monto',
    },
    'wwjahvpl': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
    },
    'sx0vvzxd': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
    },
    'ai453kej': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
    },
    'wo9cebk7': {
      'en': 'Select Transfer',
      'es': 'Seleccione Transferir',
    },
    'rcevwwju': {
      'en': 'Reason',
      'es': 'Razón',
    },
    'uvrt7im0': {
      'en': 'Request Funds',
      'es': 'Pedír fondos',
    },
    '7y89msg9': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
    },
    'xk0bwox3': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // transaction_ADD
  {
    'qywon4k1': {
      'en': 'Add Transaction',
      'es': 'Agregar transacción',
    },
    'bh9tad8e': {
      'en': 'Amount',
      'es': 'Cantidad',
    },
    'ohewrgsv': {
      'en': 'Spent At',
      'es': 'gastado en',
    },
    '3170k9n1': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
    },
    'abz6nm8z': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
    },
    '3y95vtb6': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
    },
    '861el4k4': {
      'en': 'Select Budget',
      'es': 'Seleccionar presupuesto',
    },
    'swxms7ln': {
      'en': 'Reason',
      'es': 'Razón',
    },
    'uqfgu088': {
      'en': 'Add Transaction',
      'es': 'Agregar transacción',
    },
    '9stmpsf0': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
    },
    'gzhmf1t6': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
    },
    '7trcsuiu': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // createBudget
  {
    'smbfunwu': {
      'en': 'Create Budget',
      'es': 'Cuanto quiere apostar',
    },
    'fcgw57wj': {
      'en': 'Amount',
      'es': 'Cantidad',
    },
    'onjddqdc': {
      'en': 'Budget Name',
      'es': 'Nombre del presupuesto',
    },
    'g83gfmaf': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '0iex13x2': {
      'en': 'Create Budget',
      'es': 'Crear presupuesto',
    },
    'jy5q09h1': {
      'en': 'Tap above to complete request',
      'es': 'Toque arriba para completar la solicitud',
    },
    '8hzaiw1r': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
    },
    'mos068mm': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // transaction_EDIT
  {
    's300dyxl': {
      'en': 'Edit Transaction',
      'es': 'Editar transacción',
    },
    '5xgwlwjj': {
      'en': 'Amount',
      'es': 'Cantidad',
    },
    '720k2d98': {
      'en': 'Spent At',
      'es': 'gastado en',
    },
    'df1ingy2': {
      'en': 'Office Budget',
      'es': 'Presupuesto de oficina',
    },
    '5kzmka3y': {
      'en': 'External Transfer',
      'es': 'Transferencia externa',
    },
    'nvtz0bpd': {
      'en': 'ACH Payment',
      'es': 'Pago CCA',
    },
    'l3bqo3oh': {
      'en': 'Select Budget',
      'es': 'Seleccionar presupuesto',
    },
    '0lw03w43': {
      'en': 'Reason',
      'es': 'Razón',
    },
    '3eftlbxd': {
      'en': 'Update Transaction',
      'es': 'Actualizar transacción',
    },
    '4atjd0yh': {
      'en': 'Tap above to save your changes.',
      'es': 'Toca arriba para guardar tus cambios.',
    },
    'pg18rcyu': {
      'en': 'Please enter an amount',
      'es': 'Por favor ingrese una cantidad',
    },
    '12if11ss': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // notificationsSettings
  {
    'sc4ff4ce': {
      'en': 'Notifications',
      'es': 'Notificaciones',
    },
    'r72zvrv5': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'es':
          'Elija qué notificaciones desea recibir a continuación y actualizaremos la configuración.',
    },
    'gjygkr0n': {
      'en': 'Push Notifications',
      'es': 'Notificaciones push',
    },
    '3y3yhxbk': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'es':
          'Reciba notificaciones Push de nuestra aplicación de forma semi regular.',
    },
    '1ytebj35': {
      'en': 'Email Notifications',
      'es': 'Notificaciónes de Correo Electrónico',
    },
    '9lvh5nst': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'es':
          'Reciba notificaciones por correo electrónico de nuestro equipo de marketing sobre nuevas funciones.',
    },
    '69d2j74u': {
      'en': 'Location Services',
      'es': 'Servicios de localización',
    },
    '3k8cuv0d': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'es':
          'Permítanos rastrear su ubicación, esto ayuda a realizar un seguimiento de los gastos y lo mantiene seguro.',
    },
    'isgrgbfs': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
    },
    'a96mlyeh': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // privacyPolicy
  {
    'alczfiiy': {
      'en': 'Privacy Policy',
      'es': 'política de privacidad',
    },
    'fvsfg5on': {
      'en': 'How we use your data',
      'es': 'Cómo usamos sus datos',
    },
    'nbiyrnzl': {
      'en':
          'Privacy Policy Fortunators App is owned by Fortunators, which is a data controller of your personal data. We have adopted this privacy policy, which determines how we process the information collected by comparing you, which also provides the reasons why we must collect certain personal data about you. Therefore, you should read this privacy policy before using the fortunators app. We take care of your personal data and we are committed to guaranteeing its confidentiality and security. Personal Information We Collect: When you visit Comparando, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies installed on your device.',
      'es':
          'Política de privacidad La aplicación Fortunators es propiedad de Fortunators, que es un controlador de datos de sus datos personales. Hemos adoptado esta política de privacidad, que determina cómo procesamos la información recopilada al compararlo, que también proporciona las razones por las que debemos recopilar ciertos datos personales sobre usted. Por lo tanto, debe leer esta política de privacidad antes de usar la aplicación fortunators. Cuidamos sus datos personales y nos comprometemos a garantizar su confidencialidad y seguridad. Información personal que recopilamos: cuando visita Comparando, recopilamos automáticamente cierta información sobre su dispositivo, incluida información sobre su navegador web, dirección IP, zona horaria y algunas de las cookies instaladas en su dispositivo.',
    },
    'oks4x95o': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // homePage
  {
    'ucqlrrlk': {
      'en': 'Welcome,',
      'es': 'Bienvenido,',
    },
    'c10wb3ot': {
      'en': 'Your account Details are below.',
      'es': 'Los detalles de su cuenta se encuentran a continuación.',
    },
    '6z1sm34j': {
      'en': 'Total Balance',
      'es': 'Balance total',
    },
    'c0dls4u5': {
      'en': '\$25,202',
      'es': '\$25,202',
    },
    '30yef7fj': {
      'en': 'Payroll Due',
      'es': 'Vencimiento de nómina',
    },
    'zrx9e6tv': {
      'en': '\$12,245',
      'es': '\$12,245',
    },
    '1cjqanzg': {
      'en': 'Debit Date',
      'es': 'Fecha de débito',
    },
    '726vrs60': {
      'en': 'Aug 31, 2021',
      'es': '31 de agosto de 2021',
    },
    '4dgbx46t': {
      'en': '4 Days Left',
      'es': '4 días restantes',
    },
    'n87v5tth': {
      'en': 'Marketing Budget',
      'es': 'Presupuesto de marketing',
    },
    'l5pw5c8c': {
      'en': '\$4,000',
      'es': '\$4,000',
    },
    '7i0a44qa': {
      'en': 'Total Spent',
      'es': 'Total gastado',
    },
    '9a2ya1la': {
      'en': '\$3,402',
      'es': '\$3,402',
    },
    'n1o498d9': {
      'en': '4 Days Left',
      'es': '4 días restantes',
    },
    'lmo3ko2i': {
      'en': 'Quick Services',
      'es': 'Servicios rápidos',
    },
    '774itrkn': {
      'en': 'My Bank',
      'es': 'Mi banco',
    },
    'xs2as0vf': {
      'en': 'Transfer',
      'es': 'Transferir',
    },
    'g8yaaa7f': {
      'en': 'Activity',
      'es': 'Actividad',
    },
    'nb29ps2o': {
      'en': '1 New Alert',
      'es': '1 nueva alerta',
    },
    'vgt9s153': {
      'en': 'View Now',
      'es': 'Ver ahora',
    },
    'pnvkw3b7': {
      'en':
          'We noticed a small charge that is out of character of this account, please review.',
      'es':
          'Notamos un pequeño cargo que está fuera de lugar en esta cuenta, revíselo.',
    },
    'c805m53i': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // homePage_alt
  {
    'xdh0z8qh': {
      'en': 'Welcome,',
      'es': 'Bienvenido,',
    },
    'v74pa882': {
      'en': 'Andrew',
      'es': 'Andrés',
    },
    'rzpg3cvh': {
      'en': 'Your latest updates are below.',
      'es': 'Sus últimas actualizaciones se encuentran a continuación.',
    },
    'flto6ti8': {
      'en': 'Total Balance',
      'es': 'Balance total',
    },
    'g07h0azf': {
      'en': '\$25,281',
      'es': '\$25,281',
    },
    'v9ghmn0y': {
      'en': 'Total Balance',
      'es': 'Balance total',
    },
    '7vf40ybo': {
      'en': '\$25,281',
      'es': '\$25,281',
    },
    'k4scs2cu': {
      'en': 'Total Balance',
      'es': 'Balance total',
    },
    'cvrbfozm': {
      'en': '\$25,281',
      'es': '\$25,281',
    },
    'a33ldz0h': {
      'en': 'Next Payroll',
      'es': 'Nómina siguiente',
    },
    '3dgzzz79': {
      'en': '\$25,281',
      'es': '\$25,281',
    },
    'hp28r17l': {
      'en': 'Debit Date',
      'es': 'Fecha de débito',
    },
    'k04gl6sz': {
      'en': 'Aug 31, 2021',
      'es': '31 de agosto de 2021',
    },
    'd5tcdo3w': {
      'en': '4 days left',
      'es': '4 días restantes',
    },
    '8wofym4i': {
      'en': '1 New Alert',
      'es': '1 nueva alerta',
    },
    'kaq4nzj6': {
      'en': 'Fraud Alert',
      'es': 'Alerta de fraude',
    },
    '7zcrtqx6': {
      'en':
          'We noticed a small charge that is out of character of this account, please review.',
      'es':
          'Notamos un pequeño cargo que está fuera de lugar en esta cuenta, revíselo.',
    },
    '23yxoc9m': {
      'en': 'View Now',
      'es': 'Ver ahora',
    },
    'a86mwddx': {
      'en': 'Marketing Budget',
      'es': 'Presupuesto de marketing',
    },
    '6c2o39hz': {
      'en': '\$3,000',
      'es': '\$3,000',
    },
    '5subrra4': {
      'en': 'Total Spent',
      'es': 'Total gastado',
    },
    '0wtm2m51': {
      'en': '\$2,502',
      'es': '\$2,502',
    },
    'bp9d56pc': {
      'en': '4 days left',
      'es': '4 días restantes',
    },
    'b8oj0pck': {
      'en': 'Team Name',
      'es': 'Nombre del equipo',
    },
    '87ospwsq': {
      'en': '\$5,000',
      'es': '\$5,000',
    },
    'jzfejglt': {
      'en': 'Head of Design',
      'es': 'Jefe de Diseño',
    },
    'zm0lhm2a': {
      'en': '[Time Stamp]',
      'es': '[Marca de tiempo]',
    },
    '8hu2v2im': {
      'en': '•',
      'es': '•',
    },
  },
  // homePage_alt_1
  {
    '51kawpgz': {
      'en': 'Welcome,',
      'es': 'Bienvenido,',
    },
    'izgc0c6r': {
      'en': 'Andrew',
      'es': 'Andrés',
    },
    '30kx6e5v': {
      'en': 'Your latest updates are below.',
      'es': 'Sus últimas actualizaciones se encuentran a continuación.',
    },
    'wknu2tm4': {
      'en': 'Balance',
      'es': 'Balance',
    },
    'syy689nt': {
      'en': '\$7,630',
      'es': '\$7,630',
    },
    'hhyb9x4x': {
      'en': '**** 0149',
      'es': '**** 0149',
    },
    'kg2tmby7': {
      'en': '05/25',
      'es': '25/05',
    },
    'y7zomzzp': {
      'en': 'Quick Service',
      'es': 'Servicio rapido',
    },
    'rfozud9v': {
      'en': 'Transfer',
      'es': 'Transferir',
    },
    'pcrarg0a': {
      'en': 'Activity',
      'es': 'Actividad',
    },
    'zmjsfzgg': {
      'en': 'My Bank',
      'es': 'Mi banco',
    },
    'dfjtbkbo': {
      'en': 'Transaction',
      'es': 'Transacción',
    },
    'g7t9krj7': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
    },
    'vupu5y5p': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'bj5qnrj5': {
      'en': '\$50.00',
      'es': '\$50.00',
    },
    'd1n5mbq7': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    '2thn73jc': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
    },
    '1fjdiibo': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'ld7s2fpn': {
      'en': '\$50.00',
      'es': '\$50.00',
    },
    'ft8bu1we': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    '8t6ddwco': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
    },
    'td15kjsa': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    'qmjqp9a6': {
      'en': '\$50.00',
      'es': '\$50.00',
    },
    '9qc797et': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    '8pdmehj2': {
      'en': 'Go Far Rewards',
      'es': 'Recompensas Ve Lejos',
    },
    'krrhjgc4': {
      'en': 'Income',
      'es': 'Ingreso',
    },
    '53m2u0s2': {
      'en': '\$50.00',
      'es': '\$50.00',
    },
    'aks5zz4f': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    'f3hxl69y': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // profilepage
  {
    'hhb6veym': {
      'en': 'Wallet Balance',
      'es': 'Saldo de la cartera',
    },
    'fgf8icmv': {
      'en': '\$23,000',
      'es': '\$23,000',
    },
    '2rrr446m': {
      'en': '3 currencies',
      'es': '3 monedas',
    },
    'r04m9nxs': {
      'en': 'My Bank',
      'es': 'Mi banco',
    },
    '8nac51xz': {
      'en': 'Transfer',
      'es': 'Transferir',
    },
    's56t3xya': {
      'en': 'Activity',
      'es': 'Actividad',
    },
    'vewa5op5': {
      'en': 'Bitcoin',
      'es': 'Bitcoin',
    },
    '9oun2uok': {
      'en': '\$7,302',
      'es': '\$7,302',
    },
    'yla7uncg': {
      'en': '32% of portfolio',
      'es': '32% de la cartera',
    },
    '7hsm7t9z': {
      'en': ' ',
      'es': '',
    },
    'opob20j8': {
      'en': 'Solona',
      'es': 'Soloña',
    },
    'fi3cleyj': {
      'en': '\$7,302',
      'es': '\$7,302',
    },
    '606emxw1': {
      'en': '40% of portfolio',
      'es': '40% de la cartera',
    },
    'qx0ykpbm': {
      'en': ' ',
      'es': '',
    },
    'l2io5lul': {
      'en': 'Dogecoin',
      'es': 'dogecoin',
    },
    'krsyyttw': {
      'en': '\$7,302',
      'es': '\$7,302',
    },
    '4mvfe3pe': {
      'en': '40% of portfolio',
      'es': '40% de la cartera',
    },
    '6cm4jjje': {
      'en': ' ',
      'es': '',
    },
    'vox9t1s0': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // login
  {
    '5wh9zxn0': {
      'en': 'Email',
      'es': 'Correo Electronico',
    },
    'oakxbonb': {
      'en': '',
      'es': '',
    },
    '41lm5sf2': {
      'en': 'Option 1',
      'es': 'Opción 1',
    },
    'gi4qqqw5': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'k759gv50': {
      'en': 'Option 1',
      'es': 'Opción 1',
    },
    'phf58iv3': {
      'en': 'Sign In',
      'es': 'CONTINUAR',
    },
    'flgq72qa': {
      'en': '',
      'es': 'No tengo Cuenta',
    },
    '17di344m': {
      'en': '',
      'es': 'Registrarte',
    },
    'f2bt9z1q': {
      'en': '',
      'es': 'si ya tienes una cuenta',
    },
  },
  // conection
  {
    '1ank8eo7': {
      'en': 'to register',
      'es': 'registrarse',
    },
    '6ogcxgtm': {
      'en': 'get into',
      'es': 'ingresar',
    },
  },
  // game
  {
    '68vn95yr': {
      'en': 'PESOS COLOMBIANOS',
      'es': 'PESOS COLOMBIANOS',
    },
    '1u2sbzcx': {
      'en': 'Hello World',
      'es': '',
    },
    '2r200ik8': {
      'en': 'Hello World',
      'es': '',
    },
    'lb858kc6': {
      'en': 'Hello World',
      'es': '',
    },
    '9jfa6nhu': {
      'en': '',
      'es': 'DOLAR AMERICANO',
    },
  },
  // tarjeta
  {
    '3ct23b6x': {
      'en': 'credit or debit',
      'es': 'crédito o débito',
    },
    '7ddkig00': {
      'en': '',
      'es': 'CONTINUAR',
    },
    'syodo1ca': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // thankspay
  {
    'gwjp5nhh': {
      'en': 'Payment Confirmed!',
      'es': '¡Pago confirmado!',
    },
    'f2h83q7b': {
      'en': '\$425.24',
      'es': '\$425.24',
    },
    'yfybkt3d': {
      'en':
          'Your payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
      'es':
          'Su pago ha sido confirmado, puede tomar de 1 a 2 horas para que su pago se realice y aparezca en su lista de transacciones.',
    },
    'zry15h75': {
      'en': 'Mastercard Ending in 4021',
      'es': 'Mastercard terminando en 4021',
    },
    'xjgiwqpb': {
      'en': '\$425.24',
      'es': '\$425.24',
    },
    'tijh3cb5': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // paysave
  {
    'g0ikv3hq': {
      'en': 'Credit or debit card',
      'es': 'Tarjeta de crédito o débito',
    },
    '5mqvyqho': {
      'en': 'Your Name',
      'es': 'Su nombre',
    },
    '0un7lwxe': {
      'en': 'Your name',
      'es': 'Su nombre',
    },
    '8zsl7bt7': {
      'en': 'guardar',
      'es': 'guardar guardar',
    },
    'chsqvpkm': {
      'en': 'Paypal',
      'es': 'PayPal',
    },
    'z1ktfa1y': {
      'en': 'Mercado pago',
      'es': 'mercado pago',
    },
    '1j01nnem': {
      'en': 'Apple Pay',
      'es': 'Aple pay',
    },
    'osi1idri': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // politicas
  {
    '71rav1bl': {
      'en': '',
      'es': 'política de privacidad',
    },
    'kpbp64hc': {
      'en':
          'The fortunators app is owned by fortunators, which is a data controller of\nYour personal information.\n\nWe have adopted this privacy policy, which determines how we process data\ninformation collected by fortunators, which also provides the reasons why\nthat we must collect certain personal data about you. therefore you must read\nthis privacy policy before using the masamia website.\nWe take care of your personal data and we are committed to guaranteeing your\nconfidentiality and security.\n\nPersonal information we collect:\nWhen you visit comparandoo, we automatically collect certain information\nabout your device, including information about your web browser, IP address, zone\ntime and some of the cookies installed on your device. Also, as\nAs you navigate through the site, we collect information about individual web pages or\nthe products you view, what websites or search terms referred you to the site, and\nhow you interact with it. we refer to this information collected\nautomatically as \"device information\". In addition, we may collect\nthe personal data you provide to us (including, among others, first name, last name,\naddress, payment information, etc.) during registration to comply with the\nagreement.\n\nWhy do we process your data?\nour highest priority is the security of customer data and as such,\nwe may process only the minimum user data, only to the extent that it is\nabsolutely necessary to maintain the website. the information collected\nis automatically used only to identify possible instances of abuse and\nestablish statistical information on the use of the website. this information\nThe statistics are not aggregated in such a way as to identify any particular user.\nof the system. you can visit the site without telling us who you are or revealing any\ninformation by which someone can identify you as a specific person. without\nHowever, if you wish to use some of the features of the website or wish to receive\nour newsletter or provide other details by completing a form,\nYou can provide us with personal data, such as your email, name,\nlast name, city of residence, organization and telephone number. you can choose\ndo not provide your personal data, but you may not be able to take advantage of\nsome of the functions of the website. for example, you will not be able to receive our newsletter\nor contact us directly from the website. users who are not sure\nwhose data is required, you can contact us through\nfrom fortunetorsapp@gmail.com.\nYour rights:\nif you are a European resident, you have the following rights related to your data\nstaff:\n*The right to be informed.\n*The right of access.\n*The right to rectification.\n*The right to delete.\n*The right to restrict processing.\n*The right to data portability.\n*The right of opposition.\n*Rights in relation to automated decision-making and the preparation of\nprofiles.\n\nIf you wish to exercise this right, please contact us through the information\ncontact below.\nAlso, if you are a European resident, we highlight that we are processing your\ninformation to fulfill contracts we may have with you (for\nexample, if you place an order through the site), or otherwise to track\nour legitimate business interests listed above. also have\nPlease note that your information may be transferred outside of Europe, including to Canada and\nUSA\nLinks to other websites:\nOur site may contain links to other websites that are not owned by us.\n\nowned or controlled by us. keep in mind that we are not\nresponsible for such websites or the privacy practices of third parties. tea\nWe recommend that you be aware when you leave our website and read the\nprivacy statements of each site that may collect personal information.\n\nSecurity of the information:\nWe secure the information you provide on computer servers in a\ncontrolled and secure environment, protected from unauthorized access, use or disclosure.\n\nwe maintain reasonable administrative, technical and physical security measures\nto protect against unauthorized access, use, modification and disclosure\nof personal data under its control and custody. however, it cannot be guaranteed\ndata transmission over the Internet or wireless networks.\n\nLegal disclosure:\nWe will disclose any information we collect, use or receive if we do.\n\nrequired or permitted by law, such as to comply with a subpoena or legal process\nsimilar, and when we believe in good faith that disclosure is necessary to protect\nour rights, protect your safety or the safety of others, investigate the\nfraud or respond to a government request.\nContact information:\nif you want to contact us',
      'es':
          'La aplicación fortunators es propiedad de fortunators, que es un controlador de datos de\nTu información personal.\n\nHemos adoptado esta política de privacidad, que determina cómo procesamos los datos.\ninformación recopilada por fortunators, que también proporciona las razones por las cuales\nque debemos recopilar ciertos datos personales sobre usted. por lo tanto debes leer\nesta política de privacidad antes de utilizar el sitio web de masamia.\nCuidamos sus datos personales y nos comprometemos a garantizar su\nconfidencialidad y seguridad.\n\nInformación personal que recopilamos:\nCuando visitas comparandoo, recopilamos automáticamente cierta información\nsobre su dispositivo, incluida información sobre su navegador web, dirección IP, zona\ntiempo y algunas de las cookies instaladas en su dispositivo. Tambien como\nA medida que navega por el sitio, recopilamos información sobre páginas web individuales o\nlos productos que ve, qué sitios web o términos de búsqueda lo refirieron al sitio, y\ncómo interactúas con él. nos referimos a esta información recopilada\nautomáticamente como \"información del dispositivo\". Además, podemos recopilar\nlos datos personales que nos proporciona (incluyendo, entre otros, nombre, apellido,\ndirección, información de pago, etc.) durante el registro para cumplir con los\nacuerdo.\n\n¿Por qué tratamos sus datos?\nnuestra máxima prioridad es la seguridad de los datos de los clientes y, como tal,\npodemos procesar solo los datos mínimos del usuario, solo en la medida en que sea\nabsolutamente necesario para mantener el sitio web. la información recopilada\nse usa automáticamente solo para identificar posibles instancias de abuso y\nestablecer información estadística sobre el uso del sitio web. esta informacion\nLas estadísticas no se agregan de tal manera que identifiquen a ningún usuario en particular.\ndel sistema. puede visitar el sitio sin decirnos quién es ni revelar ningún\ninformación por la cual alguien puede identificarlo como una persona específica. sin\nSin embargo, si desea utilizar algunas de las funciones del sitio web o desea recibir\nnuestro boletín o proporcionar otros detalles completando un formulario,\nPuede proporcionarnos datos personales, como su correo electrónico, nombre,\napellido, ciudad de residencia, organización y número de teléfono. tu puedes elegir\nno proporcione sus datos personales, pero es posible que no pueda aprovechar\nalgunas de las funciones del sitio web. por ejemplo, no podrá recibir nuestro boletín\no contáctenos directamente desde el sitio web. usuarios que no están seguros\ncuyos datos son requeridos, puede contactarnos a través de\nde fortunetorsapp@gmail.com.\nTus derechos:\nsi es residente europeo, tiene los siguientes derechos relacionados con sus datos\npersonal:\n*El derecho a ser informado.\n*El derecho de acceso.\n*El derecho a la rectificación.\n*El derecho a borrar.\n*El derecho a restringir el procesamiento.\n*El derecho a la portabilidad de los datos.\n*El derecho de oposición.\n*Derechos en relación con la toma de decisiones automatizada y la elaboración de\nperfiles.\n\nSi desea ejercer este derecho, póngase en contacto con nosotros a través de la información\ncontacto a continuación.\nAdemás, si eres residente europeo, destacamos que estamos tramitando tu\ninformación para cumplir con los contratos que podamos tener con usted (por\nejemplo, si realiza un pedido a través del sitio), o de otra manera para rastrear\nnuestros intereses comerciales legítimos enumerados anteriormente. también tienen\nTenga en cuenta que su información puede transferirse fuera de Europa, incluso a Canadá y\nEE.UU\nEnlaces a otros sitios web:\nNuestro sitio puede contener enlaces a otros sitios web que no son de nuestra propiedad.\n\nde nuestra propiedad o controlados por nosotros. ten en cuenta que no somos\nresponsable de dichos sitios web o de las prácticas de privacidad de terceros. té\nLe recomendamos que esté atento cuando abandone nuestro sitio web y lea el\ndeclaraciones de privacidad de cada sitio que pueda recopilar información personal.\n\nSeguridad de la información:\nAseguramos la información que usted proporciona en servidores informáticos en un\nambiente controlado y seguro, protegido del acceso, uso o divulgación no autorizados.\n\nmantenemos medidas de seguridad administrativas, técnicas y físicas razonables\npara proteger contra el acceso, uso, modificación y divulgación no autorizados\nde datos personales bajo su control y custodia. sin embargo, no se puede garantizar\ntransmisión de datos a través de Internet o redes inalámbricas.\n\nDivulgación jurídica:\nDivulgaremos cualquier información que recopilemos, usemos o recibamos si lo hacemos.\n\nrequerido o permitido por la ley, como para cumplir con una citación o proceso legal\nsimilar, y cuando creemos de buena fe que la divulgación es necesaria para proteger\nnuestros derechos, proteger su seguridad o la seguridad de otros, investigar la\nfraude o responder a una solicitud del gobierno.\nInformación del contacto:\nsi quieres contactar con nosotros',
    },
    'axnbobyp': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // cashtable
  {
    '0mg72mu0': {
      'en': 'players',
      'es': 'jugadores',
    },
    'xyjmuh5i': {
      'en': 'audience',
      'es': 'audiencia',
    },
    '9sxg7i09': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    '8gfipbps': {
      'en': '',
      'es': 'saldo:',
    },
    'oh8ab2mn': {
      'en': 'on line',
      'es': 'en línea',
    },
    'lm8z6s2r': {
      'en': '',
      'es': ':(',
    },
    'u4t41w86': {
      'en': '\$200.00',
      'es': '\$200.00',
    },
    '2tnlm0ml': {
      'en': '\$50.000',
      'es': '\$50.000',
    },
    'bnhsy2go': {
      'en': '',
      'es': ':(',
    },
    '6b6m1596': {
      'en': '\$300.000',
      'es': '\$300.000',
    },
    'qdf7rwjq': {
      'en': 'Back',
      'es': 'Atrás',
    },
    'kyae5jvy': {
      'en': '\$400.000',
      'es': '\$400.000',
    },
    '5n3cm1lv': {
      'en': '\$350.000',
      'es': '\$350.000',
    },
  },
  // goldtable
  {
    'hb7irzgg': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    'pfyd2vzp': {
      'en': '',
      'es': 'SUTANO',
    },
    '1nx0wc3m': {
      'en': 'colombia',
      'es': 'Colombia',
    },
    'h85u0cn9': {
      'en': '',
      'es': 'SUTANO',
    },
    'lnxw02ww': {
      'en': '',
      'es': 'Colombia',
    },
    'bk7bilmh': {
      'en': '',
      'es': 'SUTANO',
    },
    '3rvtmz40': {
      'en': 'colombia',
      'es': 'Colombia',
    },
    'jquo0zc2': {
      'en': 'colombia',
      'es': 'Colombia',
    },
    'aflafzeb': {
      'en': '',
      'es': 'SUTANO',
    },
    'ey7hvbvl': {
      'en': 'VIEWER:',
      'es': 'ESPECTADOR:',
    },
    'nli1t6tb': {
      'en': 'Back',
      'es': 'Atrás',
    },
    'xio3f2j8': {
      'en': 'Hello World',
      'es': 'Hola Mundo',
    },
    'cjz8u4pm': {
      'en': ':(',
      'es': ':(',
    },
    'x2ldo69c': {
      'en': '\$200.00',
      'es': '\$200.00',
    },
    'qo5brd8h': {
      'en': '\$50.000',
      'es': '\$50.000',
    },
    '5mgputhz': {
      'en': '',
      'es': ':(',
    },
    'v5m2zhse': {
      'en': '\$300.000',
      'es': '\$300.000',
    },
    'b5ygnocs': {
      'en': 'Back',
      'es': 'Atrás',
    },
    '9lrb097r': {
      'en': '\$400.000',
      'es': '\$400.000',
    },
    'kaiq31gi': {
      'en': '\$350.000',
      'es': '\$350.000',
    },
  },
  // fortunatable
  {
    'dv5rd5yj': {
      'en': 'players',
      'es': 'jugadores',
    },
    'j5bpofya': {
      'en': '',
      'es': 'SUTANO',
    },
    'w1k7gl91': {
      'en': 'colombia',
      'es': 'Colombia',
    },
    '7v0xe64x': {
      'en': '',
      'es': 'SUTANO',
    },
    'ige7uenb': {
      'en': '',
      'es': 'Colombia',
    },
    's3j4ov79': {
      'en': '',
      'es': 'SUTANO',
    },
    'ib0zckt1': {
      'en': 'colombia',
      'es': 'Colombia',
    },
    '628uycfx': {
      'en': 'colombia',
      'es': 'Colombia',
    },
    'rxilo493': {
      'en': '',
      'es': 'SUTANO',
    },
    'ypinla2q': {
      'en': 'VIEWER:',
      'es': 'ESPECTADOR:',
    },
    '3k4njebv': {
      'en': 'balance:',
      'es': 'balance:',
    },
    'z60xaif0': {
      'en': 'online',
      'es': 'en línea',
    },
    'qe1m12fq': {
      'en': ':(',
      'es': ':(',
    },
    's22gd02p': {
      'en': '\$200.00',
      'es': '\$200.00',
    },
    'wy0hgvsf': {
      'en': '\$50.000',
      'es': '\$50.000',
    },
    'zmhy5h8a': {
      'en': '',
      'es': ':(',
    },
    'w8ejuj26': {
      'en': '\$300.000',
      'es': '\$300.000',
    },
    'lez6dm27': {
      'en': 'Back',
      'es': 'Atrás',
    },
    'htkigowh': {
      'en': '\$400.000',
      'es': '\$400.000',
    },
    'nge2hif4': {
      'en': '\$350.000',
      'es': '\$350.000',
    },
  },
  // home
  {
    'qubx0dxj': {
      'en':
          'The player must\n upload the money that will be available in his\n money bag through the payment platform. ',
      'es':
          'El jugador deberá\n subir por la plataforma de pago el dinero que tendrá\n disponible en su bolsa de dinero.',
    },
    'bnjc4lcd': {
      'en': 'I want to bet on:',
      'es': 'Quiero apostar por:',
    },
    'czhwmirp': {
      'en': 'COP\$',
      'es': 'COP\$',
    },
    '2avbb0nv': {
      'en': 'USD\$',
      'es': 'USD\$',
    },
    '41xtfaf0': {
      'en': 'I want to bet on:',
      'es': 'Quiero apostar por:',
    },
    '2elzfyq2': {
      'en': 'Search for an item...',
      'es': 'Quiero apostar por:',
    },
    'vrn7x940': {
      'en': 'Youtube',
      'es': 'Youtube',
    },
    'm5u9p8tw': {
      'en': 'play',
      'es': 'jugar',
    },
    'nyqsxeqs': {
      'en': 'Read Game Rules',
      'es': 'Leer reglas del juego',
    },
  },
  // avatars
  {
    'nq6fzbha': {
      'en': '',
      'es': '',
    },
    'ysdx1516': {
      'en': 'Categories',
      'es': '',
    },
    'psieli6r': {
      'en': 'Outerwear',
      'es': '',
    },
    '7aobuso7': {
      'en': 'Pants',
      'es': '',
    },
    '5o313mzy': {
      'en': 'Pants',
      'es': '',
    },
    'nlbq302b': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    'lp49i4sb': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    'gsvbttps': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    '0cs9gor1': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    'p7lvbktu': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    'tq546c7o': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    'c8k6ilvj': {
      'en': 'Shorts Sporty',
      'es': '',
    },
    'mv7r7z2a': {
      'en': 'Categories',
      'es': '',
    },
    'zr9xstnj': {
      'en': 'Shop',
      'es': '',
    },
  },
  // rules
  {
    '97fc613i': {
      'en': 'play',
      'es': 'Jugar',
    },
    'b6ox51n5': {
      'en': 'Home',
      'es': 'Home',
    },
    'vdiaf1zq': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // disfrutaygana
  {
    'w9k2ung3': {
      'en': 'next',
      'es': 'siguiente',
    },
  },
  // changePassword
  {
    'dhr24bcn': {
      'en': 'change Password.',
      'es': 'cambiar la contraseña.',
    },
    'w950ekck': {
      'en': '',
      'es': 'direccion email',
    },
    'bbod09b6': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
    },
    '9o3etdhc': {
      'en': '',
      'es': '',
    },
    'pia8zond': {
      'en': 'chager password',
      'es': 'contraseña del cargador',
    },
    'd7bbngag': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // thereismethod
  {
    '14rgm5u8': {
      'en': 'Add',
      'es': 'Agregar',
    },
    'w1w93746': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // ciencop
  {
    'zjk2lkdy': {
      'en': 'online',
      'es': 'en línea',
    },
  },
  // docientoscop
  {
    'nm7xd8qy': {
      'en': 'online',
      'es': 'en línea',
    },
  },
  // cashavatar
  {
    'qzwn8tyw': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'ghizkjw7': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'pzz2lncu': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'ow6rsww7': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'uw5ioc3e': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    '7bg80v5b': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'sg4a91i9': {
      'en': 'return home',
      'es': 'volver home',
    },
    'bo2rzcq4': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // corona
  {
    'hj3b7isf': {
      'en': 'Description',
      'es': 'Descripción',
    },
    't67gvq4y': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'clk3mfa8': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'pa03hn9w': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'dnm7rwj7': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'sfpqfrw5': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'hkrzq1mf': {
      'en': 'return home',
      'es': 'volver home',
    },
    'p7d18vo6': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // mundomagico
  {
    '714rztwk': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'des76lh4': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '20wewmx0': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'gz3mi70w': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'giir9ao7': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'tcmfq37f': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '1697r9gd': {
      'en': 'return home',
      'es': 'volver home',
    },
    'qknilgaz': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // espejo
  {
    'ur003iri': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'nldgdlh3': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'dgtnmc7o': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '4wxeln8q': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'gg2vnte8': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'rgj1kzre': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'k69k7dzj': {
      'en': 'return home',
      'es': 'volver home',
    },
    'yhhxx2h1': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // cristals
  {
    'pzr8rret': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '5qh67dak': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '0oyywmhm': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '9arou1pu': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'ovfoeglp': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    '7z50euc8': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'ek0x6wwd': {
      'en': 'return home',
      'es': 'volver home',
    },
    '3oc1rhs5': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // rocamagica
  {
    'ibwwufdf': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'jh6y2j55': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'c4het48f': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'b5jstery': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'dg53oem0': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'xq3uw9cj': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'c7pxnbsh': {
      'en': 'return home',
      'es': 'volver home',
    },
    'e2ozjhi8': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // nave
  {
    'oyozs3xc': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'j8t650sl': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'lz24xlmj': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'wotqbz9m': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'oefif6so': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'j2sbxksb': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'yhs74g0k': {
      'en': 'return home',
      'es': 'volver home',
    },
    '45z6ykzu': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // brujula
  {
    'ds056msg': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '35su627o': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'br7pibkf': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'pzkysvqp': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'll5rngww': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    '5pqfgukd': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'pqm7o5ux': {
      'en': 'return home',
      'es': 'volver home',
    },
    'ee4ez5j6': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // espejomagico
  {
    'rttqtu8x': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'kyijp0a5': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '773k21j5': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'mob3pxts': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    '3f02xc9b': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'uttg6yst': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '216cqjzn': {
      'en': 'return home',
      'es': 'volver home',
    },
    '74j6h1pd': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // magia
  {
    'gcbdkq4i': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'gyxalwa8': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'riy6zsuv': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '5oi0ojxg': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'ro3th60b': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'w0u7lc8o': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'ojq08hox': {
      'en': 'return home',
      'es': 'volver home',
    },
    'l60xln01': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // libro
  {
    '8h7fnoo7': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'trs1f4qr': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'auffn12e': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'omqj3f24': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'hhw32082': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'vwrhwz2y': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'lf2irv8c': {
      'en': 'return home',
      'es': 'volver home',
    },
    'dg3059qj': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // hielo
  {
    '3pcxdnhf': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'nloak4pg': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '0cy1i5x6': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'ugvgl1o5': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'xhmpdtjh': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'wrwz4fjr': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '25i4ga4y': {
      'en': 'return home',
      'es': 'volver home',
    },
    'onwsov3b': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // obni
  {
    'wu1sx4ez': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'umolsecn': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'qvheqzjk': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '41xtuxg1': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'dgt4murw': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'bod1o05u': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '2xzk8nsb': {
      'en': 'return home',
      'es': 'volver home',
    },
    'c6ztx76f': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // planet
  {
    '7bhthiaz': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'mo4910h1': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '5gpkgmqs': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'odlrccow': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    's6qiuee2': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    't5s38o2a': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'inaaty3p': {
      'en': 'return home',
      'es': 'volver home',
    },
    'vsm1nxzt': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // planeta
  {
    'vp58er1k': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'm15lbgf0': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'agmvfm9f': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'a8bgnkbb': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'bnz5hl2r': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'dkj12pdf': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '4liv297l': {
      'en': 'return home',
      'es': 'volver home',
    },
    '1u2rvmy7': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // tierraavatar
  {
    'w782j1qx': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'svewvn12': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '1gnoyst0': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'kgh19hjm': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'qfy7ujbp': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'mjdts4iq': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'brh8g7kj': {
      'en': 'return home',
      'es': 'volver home',
    },
    'hcm87sa8': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // cristal
  {
    'o93x7wk1': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'sjdqyq9e': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'whtu7ear': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '6co0v7a1': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'x8i12sf9': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'jnrj8z8l': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '1rmck2vw': {
      'en': 'return home',
      'es': 'volver home',
    },
    'a475sjdt': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // jarron
  {
    '0vr8cu9r': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '53lo2fvs': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'i62515hm': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'pjrbtj3d': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    '1hy0xefo': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'y20julw8': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'ghjgonfd': {
      'en': 'return home',
      'es': 'volver home',
    },
    'aoh0blbh': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // magica
  {
    'r05mjzn2': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'dqncwhkz': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'nqrflwzp': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '1t4x9f84': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'uqhe06xa': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'n1nzc1ko': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'ycyhusj0': {
      'en': 'return home',
      'es': 'volver home',
    },
    'eipss0db': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // saturno
  {
    'rziti1da': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '29f4afdn': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'ft2zcz4z': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'ntpwzwe1': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'ku4qo9na': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'qgy5gsn1': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'gcrk8tlw': {
      'en': 'return home',
      'es': 'volver home',
    },
    '24gdhwfi': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // start
  {
    'sumxsq5i': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'tfegstqp': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'suglwrf8': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'vqu2enpb': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'gnz4hi19': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'viozxwin': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'i463tsud': {
      'en': 'return home',
      'es': 'volver home',
    },
    '6ieedb2v': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // relic
  {
    '3jwwmawi': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '94kkgkmq': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '592tgpe5': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'bw9h25wk': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'afefxrs8': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'zaecw1ql': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'v4k5g3u8': {
      'en': 'return home',
      'es': 'volver home',
    },
    'ttp19wri': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // oracle
  {
    '6athja1s': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'qfkzrydw': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'ozop4zo1': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'f6mf9xkn': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'x2osedqc': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    '1p2y9t5u': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '3p9e531h': {
      'en': 'return home',
      'es': 'volver home',
    },
    'yw4skmdm': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // clock
  {
    'gh9zr6q9': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '9ix4kbea': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'jbbj50es': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'l179rhoj': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'awhftxau': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'nqqlkqko': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'nj0lllbr': {
      'en': 'return home',
      'es': 'volver home',
    },
    '10jyex5o': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // magnet
  {
    'ak81wwj3': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'epmtdxwr': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '19rjbxje': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'ip3th5dk': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    '232m3kwn': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'rcy4jtfc': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'fdyiw3mt': {
      'en': 'return home',
      'es': 'volver home',
    },
    '3r66j16r': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // bomb
  {
    'af1tmwks': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '674s77nd': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'r0ozt1us': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'qio3m4rm': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    '28w59enr': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'igfkrqbq': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'x1q8i628': {
      'en': 'return home',
      'es': 'volver home',
    },
    '3sm2m0ij': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // flag
  {
    '5t1s06kc': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'eurzwgbb': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'lw91se9v': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'a65a2d3t': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'lifqsw00': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'om9pdkb2': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'vxht2ahm': {
      'en': 'return home',
      'es': 'volver home',
    },
    '3cgkwjdl': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // heart
  {
    'x776n934': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'vs1itm1e': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'jdcn9m8d': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '9ceo81w5': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'xplbycrb': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'lriba717': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '7lox6h0x': {
      'en': 'return home',
      'es': 'volver home',
    },
    'ypru3prz': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // energy
  {
    'beg5p7no': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'frlt4jug': {
      'en': 'balance',
      'es': 'Saldo',
    },
    '2vm42zax': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'htk8xtlf': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'auj294ec': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'ni9padvq': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    '08ytwzuz': {
      'en': 'return home',
      'es': 'volver home',
    },
    '9prbxaif': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // gift
  {
    'vtxqkp4j': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'g8c07q7w': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'ko4k4hif': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'zqu3q3ti': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    '1zucvfwu': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    '63qb5qt6': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'pdulho91': {
      'en': 'return home',
      'es': 'volver home',
    },
    'pnt71vtj': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // espada
  {
    'hs9ojeh0': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'n7do80xe': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'io1ezbcl': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    '3m0zpttl': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'q6nfbg5b': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'uym9vf5l': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'x0smqq8t': {
      'en': 'return home',
      'es': 'volver home',
    },
    'bx9mm2rt': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // sheet
  {
    'zfubjb2y': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'e7w6xdbd': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'gxclbepe': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'khn4zzja': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'ea41n86p': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    '863cj7al': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'fpa5ghy0': {
      'en': 'return home',
      'es': 'volver home',
    },
    'yi4vtoum': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // spadachin
  {
    'd8hb4r30': {
      'en': 'Description',
      'es': 'Descripción',
    },
    'jatazf22': {
      'en': 'balance',
      'es': 'Saldo',
    },
    'ixe1dw1k': {
      'en': 'Hello World',
      'es': '\$567.000',
    },
    'wldmohs9': {
      'en': 'Hello World',
      'es':
          'lknlknpnknlkniknpñn´lknlknlkn\njkvbkñjvñbkjbñkjbujbijf6asuy\nlkasjcpdsivhnd odfihoihgnrt lk',
    },
    'vyt7sm4l': {
      'en': 'punctuation',
      'es': 'puntuación',
    },
    'ylv43doi': {
      'en': 'payment method',
      'es': 'método de pago',
    },
    'kdpzjwg2': {
      'en': 'return home',
      'es': 'volver home',
    },
    'edqsljd5': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // puedes
  {
    '5se6c3r0': {
      'en': 'choose it',
      'es': 'elíge sala',
    },
    '0enaayu7': {
      'en': 'plsy sgsin',
      'es': 'volver a jugar',
    },
    '812pvli6': {
      'en': 'watch game',
      'es': 'ver juego',
    },
  },
  // bookAppointment
  {
    'sfzj3riz': {
      'en': 'Book Appointment',
      'es': 'Reservar una cita',
    },
    '4skzh9os': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'es':
          'Complete la información a continuación para reservar su cita con nuestra oficina.',
    },
    'b87tcas2': {
      'en': 'Emails will be sent to:',
      'es': 'Los correos electrónicos serán enviados a:',
    },
    'iicnw3dq': {
      'en': 'Booking For',
      'es': 'reserva para',
    },
    '5tkkg4yu': {
      'en': 'Type of Appointment',
      'es': 'Tipo de cita',
    },
    '7w5m45zt': {
      'en': 'Doctors Visit',
      'es': 'Visita de médicos',
    },
    'bmfmxg71': {
      'en': 'Routine Checkup',
      'es': 'Chequeo de rutina',
    },
    'prt95f0g': {
      'en': 'Scan/Update',
      'es': 'Escanear/Actualizar',
    },
    '7ohalsg9': {
      'en': 'What\'s the problem?',
      'es': '¿Cuál es el problema?',
    },
    'xukiv2ku': {
      'en': 'Choose Date',
      'es': 'Elija Fecha',
    },
    'lpc88cht': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    'b5umyycx': {
      'en': 'Book Now',
      'es': 'Reservar ahora',
    },
  },
  // bookingOld
  {
    '8laf5zmk': {
      'en': 'Book Appointment',
      'es': 'Reservar una cita',
    },
    'udwhsu8p': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'es':
          'Complete la información a continuación para reservar su cita con nuestra oficina.',
    },
    'm6f5lawq': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
    },
    'yz52729g': {
      'en': 'Booking For',
      'es': 'reserva para',
    },
    'hdmqdmzq': {
      'en': 'Type of Appointment',
      'es': 'Tipo de cita',
    },
    'stpxpct6': {
      'en': 'Doctors Visit',
      'es': 'Visita de médicos',
    },
    'wvgk6obb': {
      'en': 'Routine Checkup',
      'es': 'Chequeo de rutina',
    },
    'xt7ujyt8': {
      'en': 'Scan/Update',
      'es': 'Escanear/Actualizar',
    },
    'andpn0t0': {
      'en': 'What\'s the problem?',
      'es': '¿Cuál es el problema?',
    },
    'ycaso9dc': {
      'en': 'Choose Date',
      'es': 'Elija fecha',
    },
    '2pmd2p3w': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    '13j05r8j': {
      'en': 'Book Now',
      'es': 'Reservar ahora',
    },
  },
  // editBooking
  {
    '6j668hma': {
      'en': 'Edit Appointment',
      'es': 'Editar cita',
    },
    'cbp936ta': {
      'en': 'Edit the fields below in order to change your appointment.',
      'es': 'Edite los campos a continuación para cambiar su cita.',
    },
    '6btfslje': {
      'en': 'Emails will be sent to:',
      'es': 'Los correos electrónicos serán enviados a:',
    },
    'mhko6q8p': {
      'en': 'Booking For',
      'es': 'reserva para',
    },
    'shqcgjqe': {
      'en': 'Type of Appointment',
      'es': 'Tipo de cita',
    },
    '5ixhbnsd': {
      'en': 'Doctors Visit',
      'es': 'Visita de médicos',
    },
    'db46hhfw': {
      'en': 'Routine Checkup',
      'es': 'Chequeo de rutina',
    },
    'e1zm6kzh': {
      'en': 'Scan/Update',
      'es': 'Escanear/Actualizar',
    },
    'oy6qvd33': {
      'en': 'What\'s the problem?',
      'es': '¿Cuál es el problema?',
    },
    '9emhgrhs': {
      'en': 'Choose Date',
      'es': 'Elija fecha',
    },
    '2bzoinpy': {
      'en': 'Cancel',
      'es': 'Cancelar',
    },
    'gjnq0j86': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
    },
  },
  // pauseCard
  {
    'dt7m486y': {
      'en': 'Pause Card',
      'es': 'Tarjeta de pausa',
    },
    '6edae99k': {
      'en': 'Are you sure you want to pause your card?',
      'es': '¿Seguro que quieres pausar tu tarjeta?',
    },
    'omtrfcm5': {
      'en': 'Nevermind',
      'es': 'No importa',
    },
    'hw07mkb9': {
      'en': 'Yes, Pause',
      'es': 'Sí, pausa',
    },
  },
  // modalacount
  {
    'q48e4ek2': {
      'en': 'profile',
      'es': 'perfil',
    },
    'rw5razni': {
      'en': 'balance',
      'es': 'balance',
    },
    'g4hycetj': {
      'en': 'List Item',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': '',
      'es': '',
    },
    'kx9cdks4': {
      'en': '',
      'es': '',
    },
    '4t1rlfvx': {
      'en':
          'Por favor permitenos saber tu ubicacion en tiempo real para puedas apostar libremente y jugar con usuarios de tu misma region.',
      'es':
          'Por favor, permitenos saber tu ubicacion en tiempo real para poder apostar libremente y jugar con usuarios de tu misma region.',
    },
    'yukvgxdp': {
      'en':
          'Permitenos notificarte para tu juego sea agradable y no sea complicado jugar y apostar online junto con usuarios de tu misma region.',
      'es':
          'Permitenos notificarte para tu juego sea agradable y no seas complicado jugar y apostar online junto con usuarios de tu misma region.',
    },
    'efvtwj7k': {
      'en': '',
      'es': '',
    },
    'ec5hfa1e': {
      'en': '',
      'es': '',
    },
    'q5ljwvfo': {
      'en': '',
      'es': '',
    },
    'j4rmwb3h': {
      'en': '',
      'es': '',
    },
    '6ah1b18f': {
      'en': '',
      'es': '',
    },
    '2kos1hen': {
      'en': '',
      'es': '',
    },
    '7h5zad6r': {
      'en': '',
      'es': '',
    },
    'aox3s4fb': {
      'en': '',
      'es': '',
    },
    'l8hv5a7z': {
      'en': '',
      'es': '',
    },
    '4pjwb70a': {
      'en': '',
      'es': '',
    },
    '0xlokf4y': {
      'en': '',
      'es': '',
    },
    '8twlwiwt': {
      'en': '',
      'es': '',
    },
    '3qs484no': {
      'en': '',
      'es': '',
    },
    'gcpjg99t': {
      'en': '',
      'es': '',
    },
    'jpcd8af4': {
      'en': '',
      'es': '',
    },
    'ip40eg5o': {
      'en': '',
      'es': '',
    },
    'epdoha9a': {
      'en': '',
      'es': '',
    },
    't4xzlq9q': {
      'en': '',
      'es': '',
    },
    '513nj4m0': {
      'en': '',
      'es': '',
    },
    'a1jxfgju': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
