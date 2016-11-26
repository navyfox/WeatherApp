//
//  ViewController.swift
//  WeatherApp
//
//  Created by Игорь Михайлович Ракитянский on 26/11/2016.
//  Copyright © 2016 RIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!


    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(temperature: 10.0, appearentTemperature: 5.0, humidity: 30, pressure: 750, icon: icon)
        updateUIWith(currentWeather: currentWeather)

//        let urlString = "https://api.darksky.net/forecast/90fe8aa3eba5b3f71e0f2f5197286cd9/37.8267,-122.4233"
//        let baseURL = URL(string: "https://api.darksky.net/forecast/90fe8aa3eba5b3f71e0f2f5197286cd9/")
//        let fullURL = URL(string: "37.8267,-122.4233", relativeTo: baseURL)
//
//        let sessionConfiguration = URLSessionConfiguration.default
//        let session = URLSession(configuration: sessionConfiguration)
//
//        let request = URLRequest(url: fullURL!)
//        let dataTask = session.dataTask(with: fullURL!) { (data, response, error) in
//
//        }
//        dataTask.resume()
    }

    func updateUIWith(currentWeather: CurrentWeather) {

        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.appearentTemperatureLabel.text = currentWeather.appearentTemperatureString
        self.humidityLabel.text = currentWeather.humidityString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

