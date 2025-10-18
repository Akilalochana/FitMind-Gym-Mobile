class Equipment {
    final String id;
    final String name;
    final String type;
    final String description;

    // constructor to create the instance of Equipment class
    Equipment({
        required this.id,
        required this.name,
        required this.type,
        required this.description,
    });

    // A factory constructor for creating a new Equipment instance from a map
    factory Equipment.fromJson(Map<String, dynamic> json) {
        return Equipment(
            id: json['id'] as String,
            name: json['name'] as String,
            type: json['type'] as String,
            description: json['description'] as String,
        );
    }

    // convert the Equipment instance into a map (JSON), for serialization
    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'type': type,
            'description': description,
        };
    }
}