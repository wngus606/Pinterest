//
//  EndPointType.swift
//  Pinterest
//
//  Created by Seo Juhyun on 13/10/2018.
//  Copyright © 2018 seoju. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
