import 'package:intl/intl.dart';

final _formatter = NumberFormat.currency(
  locale: 'pt_Br',
  symbol: 'R\$'
);

String toCurrency(num number) => _formatter.format(number);