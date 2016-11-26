//
//  APIManager.swift
//  WeatherApp
//
//  Created by Игорь Михайлович Ракитянский on 26/11/2016.
//  Copyright © 2016 RIM. All rights reserved.
//

import Foundation

typealias JSONTask = URLSessionDataTask
typealias JSONComletionHandler = ([String: AnyObject]?, HTTPURLResponse?, Error?) -> Void

protocol APIManager {
    var sessionConfiguration: URLSessionConfiguration { get }
    var session: URLSession { get }

    func JSONTaskWith(request: URLRequest, completionHandler: JSONComletionHandler) -> JSONTask

    init(sessionConfiguration: URLSessionConfiguration)
}
