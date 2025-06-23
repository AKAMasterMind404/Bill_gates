String amountParser(int amount) {
  if (amount < 1000) {
    return amount.toString();
  }

  String newamount = amount.toString();

  int rem = newamount.length % 3;

  String init = newamount.substring(0, rem);
  String remain = newamount.substring(rem);

  init != "" ? init += "," : null;

  String ans = "";

  for (int i = 0; i < remain.length; i++) {
    ans += remain[i];
    if (i + 1 != remain.length && (i + 1) % 3 == 0) {
      ans += ",";
    }
  }

  return init + ans;
}
