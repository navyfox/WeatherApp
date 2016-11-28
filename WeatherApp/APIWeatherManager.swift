//
//  APIWeatherManager.swift
//  WeatherApp
//
//  Created by Игорь Михайлович Ракитянский on 28/11/2016.
//  Copyright © 2016 RIM. All rights reserved.
//

import Foundation

final class APIWeatherManager: APIManager {

    let sessionConfiguration: URLSessionConfiguration
    lazy var session: URLSession = {
        return URLSession(configuration: self.sessionConfiguration)
    } ()

    let apiKey: String

    init(sessionConfiguration: URLSessionConfiguration, apiKey: String) {
        self.sessionConfiguration = sessionConfiguration
        self.apiKey = apiKey
    }

    convenience init(apiKey: String) {
        self.init(sessionConfiguration: URLSessionConfiguration.default, apiKey: apiKey)
    }
}
