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
        view.backgroundColor = .white
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touches = touches.first!
        let location = touches.location(in: view)
        
        if 200 < location.x && location.y > 100 && location.x < 250 && location.y < 150{
            print("OK BRO")
            
        } else if location.x > 200 && location.y < 330 && location.x < 250, location.y > 275 {
            print("OK BRO 2")
        } else if location.x > 650 && location.x < 700 && location.y > 100 && location.y < 150 {
            print("OK BRO 3")
        } else if location.x > 650 && location.x < 700 && location.y > 275 && location.y < 330 {
            print("OK BRO 4")
        }
        
        print("touch \(location)")
    }
}

