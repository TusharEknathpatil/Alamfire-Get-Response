//
//  ViewController.swift
//  Learn-AlamoFire
//
//  Created by Mac on 27/05/23.
//

import UIKit
import Alamofire



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    

}

extension ViewController {
    func callingPostApi() {
        guard let url =  URL(string: "https://rentomed-api.avertastrategy.com/v1/product/public?page=0&size=10") else {return}
        AF.request(url).responseJson {
            response in
            switch response.result {
            case .success(let data):
               print(data)
            case.failure(let error):
                print("error is \(error)")
            }
        }
        
            }
        }
        

