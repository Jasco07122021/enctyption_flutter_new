class User {
  int? id;
  String? holderName;
  String? cardNumber;

  User(this.id, this.holderName, this.cardNumber);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    holderName = json['holderName'];
    cardNumber = json['cardNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['holderName'] = holderName;
    data['cardNumber'] = cardNumber;
    return data;
  }

  @override
  String toString() {
    return 'User{id: $id, holderName: $holderName, cardNumber: $cardNumber}';
  }
}