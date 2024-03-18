class Delivery {
  final DateTime timeOfDelivery;
  final DateTime timeOfOrder;
  final String payment;
  final String numOfPackage;
  final double weight;
  final String size;
  final String description;
  final List<String> notes;

  Delivery({
    required this.timeOfOrder,
    required this.timeOfDelivery,
    required this.payment,
    required this.numOfPackage,
    required this.weight,
    required this.size,
    required this.description,
    required this.notes,
  });
}
Delivery delivery = Delivery(
  timeOfOrder: DateTime.now(),
  timeOfDelivery: DateTime.now(),
  payment: 'Cash',
  numOfPackage: '1',
  weight: 200,
  size: 'Large',
  description: 'Fragile items',
  notes: ['Handle with care'],
);
