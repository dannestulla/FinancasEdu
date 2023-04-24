import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financas_edu/app/data/model/wallet/wallet.dart';

import 'model/ticker/ticker.dart';

class WalletRepository {
  final walletDB = FirebaseFirestore.instance
      .collection("user_account")
      .withConverter<Wallet>(
          fromFirestore: (snapshot, _) => Wallet.fromJson(snapshot.data()!),
          toFirestore: (wallet, _) => wallet.toJson());

  final tickerDB = FirebaseFirestore.instance
      .collection("user_tickers")
      .withConverter<Ticker>(
          fromFirestore: (snapshot, _) => Ticker.fromJson(snapshot.data()!),
          toFirestore: (ticker, _) => ticker.toJson());

  Future<Wallet?> getWalletData(DatabaseType type) async {
    final instance = getType(type);
    final wallet =
        await instance.orderBy("date").limitToLast(1).get().then((event) {
      if (event.docs.isEmpty) {
        return initDatabase(type);
      } else {
        return event.docs.last.data();
      }
    });
    return wallet;
  }

  Future<List<Ticker?>> getTickerData(DatabaseType type) async {
    final instance = getType(type);
    final ticker = await instance.get().then((event) {
      if (event.docs.isEmpty) {
        return initDatabase(type);
      } else {
        return event.docs.data();
      }
    });
    return ticker;
  }

  getType(DatabaseType type) =>
      type == DatabaseType.wallet ? walletDB : tickerDB;

  Future<void> updateWallet(Wallet wallet) async {
    final dateNow = DateTime.now().toString();
    //final walletData = await getData(DatabaseType.wallet) as Wallet;
    walletDB.doc(dateNow).set(wallet.copyWith(date: dateNow));
  }

  Future<void> updateTicker(Ticker ticker, bool remove) async {
    final dateNow = DateTime.now().toString();
    if (remove) {
      tickerDB.doc(ticker.name).delete();
    } else {
      tickerDB.doc(ticker.name).set(ticker.copyWith(date: dateNow));
    }
  }

  initDatabase(DatabaseType type) {
    final dateNow = DateTime.now().toString();
    var dbType = getType(type);
    var firstEntry;
    if (type == DatabaseType.wallet) {
      firstEntry = const Wallet(performance: 0, profit: "", date: "", total: 0);
    } else {
      firstEntry = const Ticker(
          name: "",
          percentageCurrent: 0,
          price: 0,
          total: 0,
          date: "",
          quantity: 0);
    }
    dbType.doc(dateNow).set(firstEntry);
    return firstEntry;
  }
}

enum DatabaseType { wallet, ticker }
