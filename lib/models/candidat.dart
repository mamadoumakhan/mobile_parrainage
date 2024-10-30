// lib/models/candidat.dart

class Candidat {
  // final String nom;
  // final String imageUrl;
  int id;
  String name ;
  // String category ;
  String image ;
  // double price ;
  // bool isliked ;
  bool isSelected ;
  Candidat({required this.id,required this.name,this.isSelected = false,required this.image});

  // Candidat({required this.nom, required this.imageUrl});

  factory Candidat.fromJson(Map<String, dynamic> json) {
    return Candidat(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      isSelected: json['isSelected'], // Assurez-vous que votre API renvoie une image
    );
  }
}
