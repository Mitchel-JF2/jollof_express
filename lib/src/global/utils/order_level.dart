/// this enum contains the different levels/stages of Orders
enum OrderLevel {
  placed(
    name: "Placed",
    description: "A vendor will soon accept your order",
  ),
  accepted(
    name: "Accepted",
    description: "The vendor is preparing your order",
  ),
  pickUpInProgress(
    name: "Pick Up",
    description: "A rider is on his way to pick up your order",
  ),
  onTheWayToCustomer(
    name: "In Transit",
    description: "The rider is bringing your order to you",
  ),
  arrived(
    name: "Arrived",
    description: "Your jollof is here, come and pick it up",
  ),
  delivered(
    name: "Delivered",
    description: "Oya enjoy! You sef you don try!",
  );

  final String name, description;

  const OrderLevel({required this.name, required this.description});
}
