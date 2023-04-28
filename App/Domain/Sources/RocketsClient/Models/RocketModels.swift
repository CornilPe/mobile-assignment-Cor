import Foundation

public struct Rocket: Identifiable, Codable, Equatable {
  public var description: String
  
  public let id: UUID
  let name: String
  let firstFlight: String
  let overview: String
  let height: UInt
  let diameter: UInt
  let mass: UInt
  let firstStage: Stage
  let secondStage: Stage
  let images: URL
}

struct Stage: Codable, Equatable {
  let reusable: Bool
  let engines: Int
  let tonsOfFuel: Int
  let burnTime: Int
}


enum NetworkError: Error {
  case networkError
  case decodingError
}
