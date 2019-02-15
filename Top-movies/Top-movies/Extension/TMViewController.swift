//
//  IDViewController.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 14/02/2019.
//  Copyright © 2019 Ivan Mihailovskii. All rights reserved.
//

import UIKit

extension UIViewController {

    func pushToController<T>(viewController: T, completion: (_ result: T) -> Void) {
        
        if let vc = UIStoryboard(name: String(describing: T.self), bundle: nil).instantiateInitialViewController() as? T {
            completion(vc)
            self.navigationController?.pushViewController(vc as! UIViewController, animated: true)
        }
    }
    
}
