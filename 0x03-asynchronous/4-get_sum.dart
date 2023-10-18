import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final String userData = await fetchUserData();
    final String id = jsonDecode(userData)['id'];

    final String orderData = await fetchUserOrders(id);
    final List orders = jsonDecode(orderData);

    final orderPrices = await Future.wait(orders
        .map((order) async => double.parse(await fetchProductPrice(order))));

    final double price =
        orderPrices.reduce((sum, orderPrice) => sum + orderPrice);
    return price;
  } catch (err) {
    return -1;
  }
}
