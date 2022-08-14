//
//  UDWTestViewController.swift
//  SimpleTools_Example
//
//  Created by HuDaQian on 2022/8/14.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import SimpleTools

struct GrandLayer {
    struct FatherLayer {
        enum AccountInfo: String {
            case username
        }
    }
}

class UDWTestViewController: UIViewController {
    
    @UserDefaultStorage(GrandLayer.FatherLayer.AccountInfo.username.enumToKeys, defaultValue: "Miloy")
    var userName: String?
    
    var deleteStatus = false
    
    lazy var btn1: UIButton = {
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
        btn.setTitle("changeName", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        return btn
    }()
    
    lazy var btn2: UIButton = {
        let btn = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 40))
        btn.setTitle("printUD&Local", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(printName), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(btn1)
        view.addSubview(btn2)
        
        userName = "Miloy.init"
        
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
        let name = GrandLayer.FatherLayer.AccountInfo.username.enumToKeys
        print(GrandLayer.FatherLayer.AccountInfo.username.enumToKeys)
        print(UserDefaults.standard.string(forKey: name) ?? "bbb")
        print(userName!)
        
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
