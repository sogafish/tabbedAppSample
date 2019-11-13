//
//  FirstViewController.swift
//  tabbedAppSample
//
//  Created by k.soga on 2019/11/04.
//  Copyright © 2019 k.soga. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    func hello(_ msg: String) {
        print(msg)
    }

    @IBAction func showAlertTextField(_ sender: Any) {
        let alert = UIAlertController(title: "TITLE", message: "Type Something", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) -> Void in
            textField.delegate = self
        })
        
        alert.addAction(UIAlertAction(
            title: "ok",
            style: .default,
            handler: {(action) -> Void in
                self.hello(action.title!)
            }
        ))
        
        alert.addAction(UIAlertAction(
            title: "cancel",
            style: .cancel,
            handler: nil
        ))
        
        present(
            alert,
            animated: true,
            completion: {
                print("alert show")
            }
        )
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

