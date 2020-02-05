//
//  HomeViewController.swift
//  Movie Database
//
//  Created by Chinh le on 2/5/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func searchByID(_ sender: Any) {
        ManagerConnection.request(Router.searchById(id: 28), BaseResponse.self) { (result, error) in
            
        }
    }

}
