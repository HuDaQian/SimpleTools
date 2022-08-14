//
//  ViewController.swift
//  SimpleTools
//
//  Created by 458331943@qq.com on 08/14/2022.
//  Copyright (c) 2022 458331943@qq.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct GrandLayer {
        struct FatherLayer {
            enum AccountInfo: String {
                case username
            }
        }
    }
    
    @UserDefaultStorage(GrandLayer.FatherLayer.AccountInfo.username.enumToKeys, defaultValue: "Miloy")
    var userName: String?
    var deleteStatus = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName = "Miloy.Grace"
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
        btn.backgroundColor = .cyan
        btn.setTitle("changeName", for: .normal)
        btn.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        view.addSubview(btn)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func testMethod() {
        if deleteStatus {
            userName = ""
        } else {
            userName = "Change"
        }
        deleteStatus.toggle()
    }
    
    @objc func printName() {
        print(UserDefaults.standard.string(forKey: GrandLayer.FatherLayer.AccountInfo.username.enumToKeys) ?? "printTest")
        print(userName!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

