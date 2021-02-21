import Foundation


struct Model: Codable {
    let timezone: String
    let current: Current
    let hourly: [Current]
    let daily: [Daily]
}

struct Current: Codable {
    let temp: Double
    let feels_like: Double
    let weather: [Weather]
}

struct Daily: Codable {
    let temp: Temp
    let feels_like: Temp
    let weather: [Weather]
}

struct Temp: Codable {
    let day: Double
    let night: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
    let icon: String
}

