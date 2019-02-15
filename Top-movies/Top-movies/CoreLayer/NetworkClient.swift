//
//  NetworkClient.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import Foundation

import Alamofire

class NetworkClient: NetworkProtocol {
    
    var urlPath: String = "https://s3-eu-west-1.amazonaws.com/sequeniatesttask/films.json"
    
    func loadData(completion: @escaping (Result<String>) -> Void) {
        
        Alamofire.request(self.urlPath).responseString(queue: nil, encoding: .utf8, completionHandler: { (response) in

            if response.result.isSuccess {
                completion(response.result)
            } else {
                print(response.error ?? "")
            }
        })
    }
}
