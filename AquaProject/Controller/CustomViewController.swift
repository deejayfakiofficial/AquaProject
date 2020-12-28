//
//  CustomViewController.swift
//  AquaProject
//
//  Created by Stanislav Terentyev on 24.12.2020.
//

import UIKit

final class CustomViewController: UIViewController {
    
    let userAuthModel = UserAuthModel(login: ["Admin":"0000"])
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let customViewController = CustomViewController()
//        self.navigationController?.pushViewController(customViewController, animated: true)
    }
    
    @IBAction func doneButtonTouched(_ sender: UIButton) {
        guard let login = userAuthModel.login.keys.first,
              let password = userAuthModel.login.values.first else {return}
        if loginTextField.text == login && passwordTextField.text == password {
            let mapViewController = MapViewController()
            self.navigationController?.pushViewController(mapViewController, animated: true)
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
