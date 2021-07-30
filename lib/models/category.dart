class Category {
  int id;
  String name;

  Category({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'],
    );
  }
}

List<Category> ListCategory = [
  Category(name: 'مسجات اسلامية'),
  Category(name: 'مسجات العيد'),
  Category(name: 'مسجات رمضان'),
  Category(name: 'مسجات الجمعة'),
  Category(name: 'مسجات حب وغرام'),
  Category(name: 'مسجات الاصدقاء'),
  Category(name: 'مسجات عيد الام'),
  Category(name: 'مسجات شوق وحنين'),
  Category(name: 'مسجات نزار قباني'),
];
