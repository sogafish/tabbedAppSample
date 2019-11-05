//
//  ThirdViewController.swift
//  tabbedAppSample
//
//  Created by k.soga on 2019/11/04.
//  Copyright © 2019 k.soga. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    func hello(_ msg: String) {
        print(msg)
    }
    
    @IBAction func showAlert(_ sender: Any) {
        // make Alert
        let alert = UIAlertController(title: "this is alert title", message: "here is message", preferredStyle: .alert)

        // button1
        alert.addAction(UIAlertAction(
            title: "Button1",
            style: .default,
            handler: {(action) -> Void in
                self.hello(action.title!)
            }
        ))
        
        // button2
        alert.addAction(UIAlertAction(
            title: "Button2",
            style: .default,
            handler: {(action) -> Void in
                self.hello(action.title!)
            }
        ))

        // cancelButton
        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil
        ))
        
        // red destructive
        alert.addAction(UIAlertAction(
            title: "delete, are you sure?",
            style: .destructive,
            handler: {(action) -> Void in
                self.hello(action.title!)
            }
        ))
        
// !! Not Working !!
//        // show alert
//        alert.present(
//            alert,
//            animated: true,
//            completion: {
//              print("oooooooo")
//            }
//        )

        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.isActive = false;

        super.viewDidLoad()
    }
}
