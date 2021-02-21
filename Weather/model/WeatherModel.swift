//
//  WeatherModel.swift
//  Weather
//
//  Created by Еркебулан on 19.02.2021.
//

import Foundation

struct WeatherModel {
    let timezone: String
    let temperature: Double
    let id: Int
    let feels_like: Double
    let description: String
    let icon: String
    let hourlyTemperature1: Double
    let hourlyTemperature2: Double
    let hourlyTemperature3: Double
    let hourlyTemperature4: Double
    let hourlyTemperature5: Double
    let hourlyFeelsLike1: Double
    let hourlyFeelsLike2: Double
    let hourlyFeelsLike3: Double
    let hourlyFeelsLike4: Double
    let hourlyFeelsLike5: Double
    let hourlyIcon1: Int
    let hourlyIcon2: Int
    let hourlyIcon3: Int
    let hourlyIcon4: Int
    let hourlyIcon5: Int
    let dailyTemp1: Double
    let dailyTemp2: Double
    let dailyTemp3: Double
    let dailyTemp4: Double
    let dailyTemp5: Double
    let dailyTemp6: Double
    let dailyTemp7: Double
    let dailyNight1: Double
    let dailyNight2: Double
    let dailyNight3: Double
    let dailyNight4: Double
    let dailyNight5: Double
    let dailyNight6: Double
    let dailyNight7: Double
    let dailyIcon1: Int
    let dailyIcon2: Int
    let dailyIcon3: Int
    let dailyIcon4: Int
    let dailyIcon5: Int
    let dailyIcon6: Int
    let dailyIcon7: Int
    var conditionIconDaily1: String {
        switch dailyIcon1 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionIconDaily2: String {
        switch dailyIcon2 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionIconDaily3: String {
        switch dailyIcon3 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionIconDaily4: String {
        switch dailyIcon4 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionIconDaily5: String {
        switch dailyIcon5 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionIconDaily6: String {
        switch dailyIcon6 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionIconDaily7: String {
        switch dailyIcon7 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var dailyNightString1: String {
        return String(format: "%.1f", dailyNight1)
    }
    var dailyNightString2: String {
        return String(format: "%.1f", dailyNight2)
    }
    var dailyNightString3: String {
        return String(format: "%.1f", dailyNight3)
    }
    var dailyNightString4: String {
        return String(format: "%.1f", dailyNight4)
    }
    var dailyNightString5: String {
        return String(format: "%.1f", dailyNight5)
    }
    var dailyNightString6: String {
        return String(format: "%.1f", dailyNight6)
    }
    var dailyNightString7: String {
        return String(format: "%.1f", dailyNight7)
    }


    var dailyTempString1: String {
        return String(format: "%.1f", dailyTemp1)
    }
    var dailyTempString2: String {
        return String(format: "%.1f", dailyTemp2)
    }
    var dailyTempString3: String {
        return String(format: "%.1f", dailyTemp3)
    }
    var dailyTempString4: String {
        return String(format: "%.1f", dailyTemp4)
    }
    var dailyTempString5: String {
        return String(format: "%.1f", dailyTemp5)
    }
    var dailyTempString6: String {
        return String(format: "%.1f", dailyTemp6)
    }
    var dailyTempString7: String {
        return String(format: "%.1f", dailyTemp7)
    }
    var hourlyTempString1: String {
        return String(format: "%.1f", hourlyTemperature1)
    }
    var hourlyTempString2: String {
        return String(format: "%.1f", hourlyTemperature2)
    }
    var hourlyTempString3: String {
        return String(format: "%.1f", hourlyTemperature3)
    }
    var hourlyTempString4: String {
        return String(format: "%.1f", hourlyTemperature4)
    }
    var hourlyTempString5: String {
        return String(format: "%.1f", hourlyTemperature5)
    }
    var temparatureString: String {
        return String(format: "%.1f", temperature)
    }
    var feels_likeString: String {
        return String(format: "%.1f", feels_like)
    }
    var hourlyFeelsTemp1: String {
        return String(format: "%.1f", hourlyFeelsLike1)
    }
    var hourlyFeelsTemp2: String {
        return String(format: "%.1f", hourlyFeelsLike2)
    }
    var hourlyFeelsTemp3: String {
        return String(format: "%.1f", hourlyFeelsLike3)
    }
    var hourlyFeelsTemp4: String {
        return String(format: "%.1f", hourlyFeelsLike4)
    }
    var hourlyFeelsTemp5: String {
        return String(format: "%.1f", hourlyFeelsLike5)
    }
    var conditionName: String {
        switch id {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    var conditionName1: String {
        switch hourlyIcon1 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionName2: String {
        switch hourlyIcon2 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionName3: String {
        switch hourlyIcon3 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionName4: String {
        switch hourlyIcon4 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    var conditionName5: String {
        switch hourlyIcon5 {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return ""
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
