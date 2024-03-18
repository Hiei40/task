class Delivery {
  final DateTime timeOfDelivery;
  final DateTime timeOfOrder;
  final String payment;
  final String numOfPackage;
  final double weight;
  final String status; // Add status attribute
  final String size;
  final String description;
  final String descriptionInfo; // Add descriptionInfo attribute
  final List<String> notes;

  Delivery({
    required this.timeOfOrder,
    required this.timeOfDelivery,
    required this.payment,
    required this.numOfPackage,
    required this.weight,
    required this.status,
    required this.size,
    required this.description,
    required this.descriptionInfo,
    required this.notes,
  });
}
