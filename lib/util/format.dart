import 'package:intl/intl.dart';

final _dateFormat = DateFormat("dd/MM/yyyy");

final _moneyWithSymbol = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$",
);

final _moneyWithoutSymbol = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "",
);

formatMoney(double value) => formatMoneyParam(value: value);

formatMoneyParam({
  required double value, 
  bool useSymbol = true,
}) => (useSymbol ? _moneyWithSymbol : _moneyWithoutSymbol).format(value);

formatDate(DateTime value) => _dateFormat.format(value);
