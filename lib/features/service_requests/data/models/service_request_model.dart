enum ServiceRequestStatus { pending, inProgress, completed, cancelled }

class ServiceRequest {
  final String id;
  final String title;
  final String description;
  final ServiceRequestStatus status;
  final String category;
  final String createdDate;
  final String? expectedCompletionDate;
  final String technician;
  final String? technicianPhone;
  final String location;
  final double priority;
  final List<String> attachmentUrls;

  ServiceRequest({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.category,
    required this.createdDate,
    this.expectedCompletionDate,
    required this.technician,
    this.technicianPhone,
    required this.location,
    required this.priority,
    this.attachmentUrls = const [],
  });
}
