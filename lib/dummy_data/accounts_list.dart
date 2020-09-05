class Account {
  Account(
      {this.accountType,
      this.acctNumber,
      this.balance,
      this.isCredit,
      this.pendingTransaction,
      this.postedTransaction});

  final String accountType;
  final String balance;
  final int acctNumber;
  final bool isCredit;
  final List<Transactions> pendingTransaction;
  final List<Transactions> postedTransaction;
}

class Transactions {
  Transactions({this.logo, this.merchant, this.date, this.price});

  final String logo, merchant, date;
  final double price;
}

List accountsList = [
  Account(
    accountType: 'Checking Account',
    acctNumber: 5187,
    balance: '8,763.7',
    isCredit: false,
    pendingTransaction: pendingTransactionsList,
    postedTransaction: postedTransactionsList,
  ),
  Account(
    accountType: 'Savings Account',
    acctNumber: 2143,
    balance: '14,629.9',
    isCredit: false,
    pendingTransaction: pendingTransactionsList,
    postedTransaction: postedTransactionsList,
  ),
  Account(
    accountType: 'Ultimate Cash',
    acctNumber: 8719,
    balance: '628.17',
    isCredit: true,
    pendingTransaction: pendingTransactionsList,
    postedTransaction: postedTransactionsList,
  ),
  Account(
    accountType: 'Platinum Card',
    acctNumber: 1946,
    balance: '973.43',
    isCredit: true,
    pendingTransaction: pendingTransactionsList,
    postedTransaction: postedTransactionsList,
  ),
  Account(
    accountType: 'Investments',
    acctNumber: 4937,
    balance: '36,715.49',
    isCredit: false,
    pendingTransaction: pendingTransactionsList,
    postedTransaction: postedTransactionsList,
  ),
  Account(
    accountType: 'Home',
    acctNumber: 3761,
    balance: '127,465.1',
    isCredit: false,
    pendingTransaction: pendingTransactionsList,
    postedTransaction: postedTransactionsList,
  ),
];

List<Transactions> pendingTransactionsList = [
  Transactions(
    logo: 'lib/dummy_data/icons/mcdonalds.svg',
    merchant: 'McDonald\'s',
    date: '7/1',
    price: 9.18,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/youtubemusic.svg',
    merchant: 'YouTube Music',
    date: '6/30 ',
    price: 2.99,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/steam.svg',
    merchant: 'Steam: GTA V',
    date: '6/30',
    price: 29.99,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/appletv.svg',
    merchant: 'Apple TV',
    date: '6/29',
    price: 4.99,
  ),
];

List<Transactions> postedTransactionsList = [
  Transactions(
    logo: 'lib/dummy_data/icons/uber.svg',
    merchant: 'Uber Rides',
    date: '6/29',
    price: 8.73,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/amazon.svg',
    merchant: 'Amazon Shopping',
    date: '6/29',
    price: 1472.8,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/googleplay.svg',
    merchant: 'Google Play',
    date: '6/28',
    price: 12.63,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/mcdonalds.svg',
    merchant: 'McDonald\'s',
    date: '6/28',
    price: 12.8,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/googlepay.svg',
    merchant: 'Google Pay',
    date: '6/28',
    price: 281.37,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/unitedairlines.svg',
    merchant: 'United Airlines',
    date: '6/25',
    price: 1852.29,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/gofundme.svg',
    merchant: 'Go Fund Me',
    date: '6/25',
    price: 10,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/uber.svg',
    merchant: 'Uber Rides',
    date: '6/29',
    price: 8.73,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/amazon.svg',
    merchant: 'Amazon Shopping',
    date: '6/29',
    price: 1472.8,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/googleplay.svg',
    merchant: 'Google Play',
    date: '6/28',
    price: 12.63,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/mcdonalds.svg',
    merchant: 'McDonald\'s',
    date: '6/28',
    price: 12.8,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/googlepay.svg',
    merchant: 'Google Pay',
    date: '6/28',
    price: 281.37,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/unitedairlines.svg',
    merchant: 'United Airlines',
    date: '6/25',
    price: 1852.29,
  ),
  Transactions(
    logo: 'lib/dummy_data/icons/gofundme.svg',
    merchant: 'Go Fund Me',
    date: '6/25',
    price: 10,
  ),
];
