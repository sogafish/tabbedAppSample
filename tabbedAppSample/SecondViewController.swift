//
//  SecondViewController.swift
//  tabbedAppSample
//
//  Created by k.soga on 2019/11/04.
//  Copyright © 2019 k.soga. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func ShowActionController(_ sender: Any) {
        let actionSheet = UIAlertController(title: "ActionSheetTitle", message: "ActionSeetMessage", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(
            title: "ButtonA",
            style: .default,
            handler: {(action) -> Void in
                print(action.title!)
                print("AAA")
            }
        ))
        
        actionSheet.addAction(UIAlertAction(
            title: "ButtonB",
            style: .default,
            handler: {(action) -> Void in
                print(action.title!)
                print("BBB")
            }
        ))
        
        actionSheet.addAction(UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil
        ))
        
        actionSheet.addAction(UIAlertAction(
            title: "Destructive",
            style: .destructive,
            handler: {(action) -> Void in
                print(action.title!)
                print("DESTRUCTIVE")
            }
        ))
        
        present(
            actionSheet,
            animated: true,
            completion: {
              print("COMPLETION !!!")
            }
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

