class PetDescription {
  String petId;
  String description;

  PetDescription({
    required this.petId,
    required this.description,
  });
}

void main() {
  PetDescription petDescription = PetDescription(
    petId: '1',
    description: 'Meet Max! He is a friendly and playful Labrador Retriever. Max loves going on long walks and playing fetch. He is great with kids and other pets. Max is fully vaccinated and ready to find his forever home.',
  );

  print('Pet ID: ${petDescription.petId}');
  print('Description: ${petDescription.description}');
}