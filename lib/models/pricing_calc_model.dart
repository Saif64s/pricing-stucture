class PricingCal {
  final String role;
  final String resources;
  final double externalRate;
  final int noOfDays;
  final int levelOfEffort;
  final double totalPrice;

  PricingCal({
    required this.role,
    required this.resources,
    required this.externalRate,
    required this.noOfDays,
    required this.levelOfEffort,
    required this.totalPrice,
  });
}
