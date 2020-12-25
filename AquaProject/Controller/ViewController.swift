//
//  ViewController.swift
//  AquaProject
//
//  Created by Stanislav Terentyev on 24.12.2020.
//

import UIKit

class ViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let cvc = CustomViewController()
        self.pushViewController(cvc, animated: true)
    }

}

