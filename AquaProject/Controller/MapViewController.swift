//
//  MapViewController.swift
//  AquaProject
//
//  Created by Stanislav Terentyev on 25.12.2020.
//

import UIKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let mapUIView = MapUIView()
//        mapUIView.frame = CGRect(x: 0, y: 0, width: 999, height: 999)
//        mapUIView.backgroundColor = UIColor.yellow
//        view.addSubview(mapUIView)
    }
    @IBAction func swimmingPoolTapped(_ sender: UIButton) {
        let swimmingPoolViewController = SwimmingPoolViewController()
        self.navigationController?.pushViewController(swimmingPoolViewController, animated: true)
    }
    
}

