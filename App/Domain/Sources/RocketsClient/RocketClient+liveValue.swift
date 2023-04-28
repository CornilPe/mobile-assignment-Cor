import Foundation
import Combine

private let baseURL = URL(string: "https://api.spacexdata.com/v3/rockets")!
@available(iOS 14.0, *)

let liveValue = RocketsClient(getRockets: {
  URLSession.shared.dataTaskPublisher(for: baseURL)
    .tryMap { data, response in
      return data
    }
    .decode(type: [Rocket].self, decoder: JSONDecoder())
    .mapError { error in
      return NetworkError.networkError
    }
    .eraseToAnyPublisher()
}, getSingleRocket: { id in
  URLSession.shared.dataTaskPublisher(for: baseURL.appendingPathComponent(id.uuidString))
    .tryMap { data, response in
      return data
    }
    .decode(type: Rocket.self, decoder: JSONDecoder())
    .mapError { error in
      return NetworkError.networkError
    }
    .eraseToAnyPublisher()
})

