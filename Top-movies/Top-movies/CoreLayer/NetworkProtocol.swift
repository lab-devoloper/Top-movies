//
//  NetworkProtocol.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import  Alamofire

protocol NetworkProtocol {
    func loadData(completion: @escaping (Result<String>) -> Void)
}
