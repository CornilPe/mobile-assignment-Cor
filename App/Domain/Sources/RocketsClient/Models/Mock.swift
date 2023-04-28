import Foundation


public extension Rocket {
  static let mock1 = Self(
    description: "hello",
    id: UUID(),
    name: "Falcon 9",
    firstFlight: "never",
    overview: " ",
    height: 1,
    diameter: 1,
    mass: 1,
    firstStage: Stage(reusable: true,
                      engines: 1,
                      tonsOfFuel: 1,
                      burnTime: 1),
    secondStage: Stage(reusable: false,
                       engines: 1,
                       tonsOfFuel: 1,
                       burnTime: 1),
    images: URL(string: "https://w7.pngwing.com/pngs/817/664/png-transparent-falcon-9-falcon-heavy-rocket-spacex-rocket-spacecraft-falcon-rocket-launch.png")!)
  
  static let mock2 = Self(
    description: "wow",
    id: UUID(),
    name: "Falcon Heavy",
    firstFlight: "never",
    overview: " ",
    height: 1,
    diameter: 1,
    mass: 1,
    firstStage: Stage(reusable: true,
                      engines: 1,
                      tonsOfFuel: 1,
                      burnTime: 1),
    secondStage: Stage(reusable: false,
                       engines: 1,
                       tonsOfFuel: 1,
                       burnTime: 1),
    images: URL(string: "https://p.kindpng.com/picc/s/180-1802221_falcon-heavy-rocket-png-transparent-png.png")!)
}
