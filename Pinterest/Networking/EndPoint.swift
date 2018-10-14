//
//  EndPoint.swift
//  Pinterest
//
//  Created by seoju on 2018. 8. 4..
//  Copyright © 2018년 seoju. All rights reserved.
//

import Foundation

//protocol Endpoint {
//    var baseUrl: String { get }
//    var path: String { get }
//    var urlParameters: [URLQueryItem] { get }
//}
//
//extension Endpoint {
//    var urlComponent: URLComponents {
//        var urlComponent: URLComponents? = URLComponents(string: baseUrl)
//        urlComponent?.path = path
//        urlComponent?.queryItems = urlParameters
//        return urlComponent!
//    }
//
//    var request: URLRequest {
//        return URLRequest(url: urlComponent.url!)
//    }
//}
//
//enum ImageSort: String {
//    case accuracy = "accuracy"
//    case recency = "recency"
//}
//
//enum ImageEndpoint: Endpoint {
//    case images(sort: ImageSort, page: String)
//
//    var baseUrl: String {
//        return ImageClient.baseUrl
//    }
//
//    var path: String {
//        switch self {
//        case .images:
//            return "/image"
//        }
//    }
//
//    var urlParameters: [URLQueryItem] {
//        switch self {
//        case .images(let sort, let page):
//            return [URLQueryItem(name: "sort", value: sort.rawValue),
//                    URLQueryItem(name: "page", value: page)]
//        }
//    }
//}
