class RegistrationModel
{
  bool status;

  RegistrationModel({required this.status,});

  factory RegistrationModel.fronJson (Map<String,dynamic>JsonData)
  {
    return RegistrationModel(status:JsonData['status'] );
  }
}
