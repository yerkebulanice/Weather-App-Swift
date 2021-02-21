import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var feelsLikeTemp: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var iconImage: UIImageView!
    var hourluTemp = [String]()
    var hourluFeel = [String]()
    var hourluIcon = [String]()
    var dailyDay = [String]()
    var dailyNight = [String]()
    var dailyIcon = [String]()
    var weatherAccess = WeatherAccess()
    let days = [String](arrayLiteral: "Monday","Tuesday","Wednesday","Thursday","Friday","Sunday","Saturday")
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CollectionViewCell.nib, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        weatherAccess.delegate = self
        weatherAccess.fetchWeather(lat: 51.1801, lon: 71.446)
        tableView.backgroundColor = UIColor(red: 96, green: 168, blue: 252, alpha: 1)
        collectionView.backgroundColor = UIColor(red: 96, green: 168, blue: 252, alpha: 1)
    }
    
}

//MARK - TableView
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.dayName.text = days[indexPath.row]
        if dailyDay.count > 0 && indexPath.row < dailyDay.count {
            cell.dayTemp.text = dailyDay[indexPath.row]
        }
        if dailyNight.count > 0 && indexPath.row < dailyNight.count {
            cell.nightTemp.text = dailyNight[indexPath.row]
        }
        if dailyIcon.count > 0 && indexPath.row < dailyIcon.count {
            cell.imageIcon.image = UIImage(systemName: dailyIcon[indexPath.row])
        }
        return cell
    }

}

//MARK - CollectionView
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        if hourluTemp.count > 0 && indexPath.row < hourluTemp.count {
            cell.timeLabel.text = hourluTemp[indexPath.row]
        }
        if hourluFeel.count > 0 && indexPath.row < hourluFeel.count {
            cell.tempHourly.text = hourluFeel[indexPath.row]
        }
        if hourluIcon.count > 0 && indexPath.row < hourluIcon.count {
            cell.iconImage.image = UIImage(systemName: "\(hourluIcon[indexPath.row])")
        }
        return cell
    }

}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}


//MARK - WeatherDelegate
extension ViewController: WeatherDelegate {
    func getWeather(_ weatherAccess: WeatherAccess, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.cityName.text = weather.timezone
            self.temp.text = "\(weather.temparatureString)°"
            self.feelsLikeTemp.text = "Feels like: \(weather.feels_likeString)°"
            self.desc.text = weather.description
            self.iconImage.image = UIImage(systemName: weather.conditionName)
            
            self.hourluTemp.append(weather.hourlyTempString1)
            self.hourluTemp.append(weather.hourlyTempString2)
            self.hourluTemp.append(weather.hourlyTempString3)
            self.hourluTemp.append(weather.hourlyTempString4)
            self.hourluTemp.append(weather.hourlyTempString5)
            self.hourluFeel.append(weather.hourlyFeelsTemp1)
            self.hourluFeel.append(weather.hourlyFeelsTemp2)
            self.hourluFeel.append(weather.hourlyFeelsTemp3)
            self.hourluFeel.append(weather.hourlyFeelsTemp4)
            self.hourluFeel.append(weather.hourlyFeelsTemp5)
            self.hourluIcon.append(weather.conditionName1)
            self.hourluIcon.append(weather.conditionName2)
            self.hourluIcon.append(weather.conditionName3)
            self.hourluIcon.append(weather.conditionName4)
            self.hourluIcon.append(weather.conditionName5)
            self.dailyDay.append(weather.dailyTempString1)
            self.dailyDay.append(weather.dailyTempString2)
            self.dailyDay.append(weather.dailyTempString3)
            self.dailyDay.append(weather.dailyTempString4)
            self.dailyDay.append(weather.dailyTempString5)
            self.dailyDay.append(weather.dailyTempString6)
            self.dailyDay.append(weather.dailyTempString7)
            self.dailyNight.append(weather.dailyNightString1)
            self.dailyNight.append(weather.dailyNightString2)
            self.dailyNight.append(weather.dailyNightString3)
            self.dailyNight.append(weather.dailyNightString4)
            self.dailyNight.append(weather.dailyNightString5)
            self.dailyNight.append(weather.dailyNightString6)
            self.dailyNight.append(weather.dailyNightString7)
            self.dailyIcon.append(weather.conditionIconDaily1)
            self.dailyIcon.append(weather.conditionIconDaily2)
            self.dailyIcon.append(weather.conditionIconDaily3)
            self.dailyIcon.append(weather.conditionIconDaily4)
            self.dailyIcon.append(weather.conditionIconDaily5)
            self.dailyIcon.append(weather.conditionIconDaily6)
            self.dailyIcon.append(weather.conditionIconDaily7)
        }
    }
}
