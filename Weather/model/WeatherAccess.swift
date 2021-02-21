//
//  WeatherAccess.swift
//  lecture8
//
//  Created by Еркебулан on 17.02.2021.
//

import Foundation

protocol WeatherDelegate {
    func getWeather(_ weatherAccess: WeatherAccess, weather: WeatherModel)
}

struct WeatherAccess {
    let mainURL = "https://api.openweathermap.org/data/2.5/onecall?"
    let bodyURL = "&exclude=minutely,alerts&appid=7a592c11438f804b35a6ed99ad2a7cc0&units=metric"

    var delegate: WeatherDelegate?
    
    func fetchWeather(lat: Double, lon: Double){
        let urlString = "\(mainURL)lat=\(lat)&lon=\(lon)\(bodyURL)"
        self.performRequest(with: urlString)
    }

    func performRequest(with urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ (data, response, error) in
                if error != nil{
                    print(error!)
                }
                if let safeData = data {
                    if let weather = self.parseJSON(safeData){
                        self.delegate?.getWeather(self, weather: weather)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(Model.self, from: weatherData)
            let temp = decodedData.current.temp
            let feels_like = decodedData.current.feels_like
            let timezone = decodedData.timezone
            let id = decodedData.current.weather[0].id
            let desc = decodedData.current.weather[0].description
            let icon = decodedData.current.weather[0].icon
//            let hourlyTemparature = [Double]()
//            let hourlyFeelsLike = [Double]()
//            let hourlyIcon = [String]()
//            for i in 0..<8 {
//                hourlyTemparature.append(decodedData.hourly[i].temp)
//            }
//            for i in 0..<8 {
//                hourlyFeelsLike.append(decodedData.hourly[i].feels_like)
//            }
//            for i in 0..<8 {
//                hourlyIcon.append(decodedData.hourly[i].weather[0].icon)
//            }
            let hourlyTemperature1 = decodedData.hourly[0].temp
            let hourlyTemperature2 = decodedData.hourly[1].temp
            let hourlyTemperature3 = decodedData.hourly[2].temp
            let hourlyTemperature4 = decodedData.hourly[3].temp
            let hourlyTemperature5 = decodedData.hourly[4].temp
            let hourlyFeelsLike1 = decodedData.hourly[0].feels_like
            let hourlyFeelsLike2 = decodedData.hourly[1].feels_like
            let hourlyFeelsLike3 = decodedData.hourly[2].feels_like
            let hourlyFeelsLike4 = decodedData.hourly[3].feels_like
            let hourlyFeelsLike5 = decodedData.hourly[4].feels_like
            let hourlyIcon1 = decodedData.hourly[0].weather[0].id
            let hourlyIcon2 = decodedData.hourly[1].weather[0].id
            let hourlyIcon3 = decodedData.hourly[2].weather[0].id
            let hourlyIcon4 = decodedData.hourly[3].weather[0].id
            let hourlyIcon5 = decodedData.hourly[4].weather[0].id
            let dailyDay1 = decodedData.daily[0].temp.day
            let dailyDay2 = decodedData.daily[1].temp.day
            let dailyDay3 = decodedData.daily[2].temp.day
            let dailyDay4 = decodedData.daily[3].temp.day
            let dailyDay5 = decodedData.daily[4].temp.day
            let dailyDay6 = decodedData.daily[5].temp.day
            let dailyDay7 = decodedData.daily[6].temp.day
            let dailyNight1 = decodedData.daily[0].temp.night
            let dailyNight2 = decodedData.daily[1].temp.night
            let dailyNight3 = decodedData.daily[2].temp.night
            let dailyNight4 = decodedData.daily[3].temp.night
            let dailyNight5 = decodedData.daily[4].temp.night
            let dailyNight6 = decodedData.daily[5].temp.night
            let dailyNight7 = decodedData.daily[6].temp.night
            let dailyIcon1 = decodedData.daily[0].weather[0].id
            let dailyIcon2 = decodedData.daily[1].weather[0].id
            let dailyIcon3 = decodedData.daily[2].weather[0].id
            let dailyIcon4 = decodedData.daily[3].weather[0].id
            let dailyIcon5 = decodedData.daily[4].weather[0].id
            let dailyIcon6 = decodedData.daily[5].weather[0].id
            let dailyIcon7 = decodedData.daily[6].weather[0].id
            let weather = WeatherModel(timezone: timezone, temperature: temp, id: id, feels_like: feels_like, description: desc, icon: icon, hourlyTemperature1: hourlyTemperature2, hourlyTemperature2: hourlyTemperature2, hourlyTemperature3: hourlyTemperature3, hourlyTemperature4: hourlyTemperature4, hourlyTemperature5: hourlyTemperature5, hourlyFeelsLike1: hourlyFeelsLike1, hourlyFeelsLike2: hourlyFeelsLike2, hourlyFeelsLike3: hourlyFeelsLike3, hourlyFeelsLike4: hourlyFeelsLike4, hourlyFeelsLike5: hourlyFeelsLike5, hourlyIcon1: hourlyIcon1, hourlyIcon2: hourlyIcon2, hourlyIcon3: hourlyIcon3, hourlyIcon4: hourlyIcon4, hourlyIcon5: hourlyIcon5, dailyTemp1: dailyDay1, dailyTemp2: dailyDay2, dailyTemp3: dailyDay3, dailyTemp4: dailyDay4, dailyTemp5: dailyDay5, dailyTemp6: dailyDay6, dailyTemp7: dailyDay7, dailyNight1: dailyNight1, dailyNight2: dailyNight2, dailyNight3: dailyNight3, dailyNight4: dailyNight4, dailyNight5: dailyNight5, dailyNight6: dailyNight6, dailyNight7: dailyNight7, dailyIcon1: dailyIcon1, dailyIcon2: dailyIcon2, dailyIcon3: dailyIcon3, dailyIcon4: dailyIcon4, dailyIcon5: dailyIcon5, dailyIcon6: dailyIcon6, dailyIcon7: dailyIcon7)
            
            return weather
        }catch{
            print(error)
            return nil
        }
    }
    
}

