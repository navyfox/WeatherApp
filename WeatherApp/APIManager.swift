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

enum APIResult<T> {
    case Succes(T)
    case Failure(Error)
}

protocol APIManager {
    var sessionConfiguration: URLSessionConfiguration { get }
    var session: URLSession { get }

    func JSONTaskWith(request: URLRequest, completionHandler: JSONComletionHandler) -> JSONTask
    func fetch<T>(request: URLRequest, parse: ([String: AnyObject]?) -> T?, comletionHandler: (APIResult<T>) -> Void)

    init(sessionConfiguration: URLSessionConfiguration)
}
