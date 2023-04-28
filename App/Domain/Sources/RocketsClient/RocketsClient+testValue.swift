import Foundation
import Combine
import XCTest


@available(iOS 14.0, *)

let rocketClient = RocketsClient(getRockets: {
  Just([Rocket.mock1, Rocket.mock2])
    .setFailureType(to: NetworkError.self)
    .eraseToAnyPublisher()
}, getSingleRocket: { _ in
  Just(Rocket.mock1)
    .setFailureType(to: NetworkError.self)
    .eraseToAnyPublisher()
}
)

//XCTAssertEqual(rocketClient.getRockets, [Rocket.mock1, Rocket.mock2])
//XCTAssertEqual(rocketClient.getSingleRocket, Rocket.mock1)



