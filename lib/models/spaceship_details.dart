// This class represents all the data
// which defines a spaceship.
import 'package:hive/hive.dart';

part 'spaceship_details.g.dart';

class Spaceship {
  // Name of the spaceship.
  final String name;

  // Cost of the spaceship.
  final int cost;

  // Cost of the spaceship.
  final double speed;

  // SpriteId to be used for displaying
  // this spaceship in game world.
  final int spriteId;

  // Path to the asset to be used for displaying
  // this spaceship outside game world.
  final String assetPath;

  // Level of the spaceship.
  final int level;

  const Spaceship({
    required this.name,
    required this.cost,
    required this.speed,
    required this.spriteId,
    required this.assetPath,
    required this.level,
  });

  /// Given a spaceshipType, this method returns a corresponding
  /// Spaceship object which holds all the details of that spaceship.
  static Spaceship getSpaceshipByType(SpaceshipType spaceshipType) {
    /// It is highly unlikely that it [spaceships] does not contain given [spaceshipType].
    /// But if that ever happens, we will just return data for [SpaceshipType.Canary].
    return spaceships[spaceshipType] ?? spaceships.entries.first.value;
  }

  /// This map holds all the meta-data of each [SpaceshipType].
  static const Map<SpaceshipType, Spaceship> spaceships = {
    SpaceshipType.Rebellion: Spaceship(
      name: 'Rebellion',
      cost: 1000,
      speed: 450,
      spriteId: 1,
      assetPath: 'assets/images/ship_H.png',
      level: 4,
    ),
  };
}

// This enum represents all the spaceship
// types available in this game.
@HiveType(typeId: 1)
enum SpaceshipType {
  @HiveField(1)
  Rebellion,
}
