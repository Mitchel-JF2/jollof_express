/// this enum contains the different levels/stages of Orders 
enum OrderLevel {
  placed("Placed"),
  accepted("Accepted"),
  pickUpInProgress("Pick Up"),
  onTheWayToCustomer("In Transit"),
  arrived("Arrived"),
  delivered("Delivered");

  final String name;

  const OrderLevel(this.name);
}
