import Combine
import Foundation
import Network


@available(iOS 14.0, *)

public struct RocketsClient {
  let getRockets: () -> AnyPublisher<[Rocket], NetworkError>
  let getSingleRocket: (_ id: UUID) -> AnyPublisher<Rocket, NetworkError>
}


  



//public struct RocketsClient: RocketsClientType {
//  public var getRocket : get 
//  public var getAllRockets
//}
//  func getRockets() -> AnyPublisher<[Rocket], NetworkError>{
//  }
//  func getSinglerocket(byID id: UUID) -> AnyPublisher<Rocket, NetworkError>
//}
