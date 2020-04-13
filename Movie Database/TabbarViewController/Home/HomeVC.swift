//
//  HomeViewController.swift
//  Movie Database
//
//  Created by Chinh le on 2/5/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func searchByID(_ sender: Any) {
        ManagerConnection.requestPopularMovie(router: Router.popularMovie(language: "en", page: 1)) { (result, error) in
            print(result?.page)
        }
    }
}
