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
    
    @IBOutlet weak var baseView: UIView!
    
    var fromView: UIView!
    var toView: UIView!

    @IBAction func showInfo(_ sender: Any) {
        UIView.transition(
            from: fromView,
            to: toView,
            duration: 1,
            options: .transitionFlipFromLeft,
            completion: {_ in
                let tmpView = self.fromView
                self.fromView = self.toView
                self.toView = tmpView
            }
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let atoView = UIImageView(image: UIImage(named: "ato"))
        
        atoView.center = CGPoint(x: baseView.bounds.midX, y: baseView.bounds.midY)
        
        let atoViewR = UILabel()
        atoViewR.text = "阿藤 快（あとう かい、1946年11月14日 - 2015年11月14日）は、日本の俳優・タレントである。旧芸名は「阿藤 海」[2][1]、本名は阿藤 公一（あとう こういち）。"
        
        atoViewR.frame = CGRect(x: 20, y: 20, width: 140, height: 21)
        atoViewR.backgroundColor = UIColor.gray
        atoViewR.textColor = UIColor.white
        
        fromView = atoView
        toView = atoViewR
        
        baseView.addSubview(fromView)
        baseView.clipsToBounds = true
    }
}


