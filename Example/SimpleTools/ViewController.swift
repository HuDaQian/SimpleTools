//
//  ViewController.swift
//  SimpleTools
//
//  Created by 458331943@qq.com on 08/14/2022.
//  Copyright (c) 2022 458331943@qq.com. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let dataSource: [(String, UIViewController.Type)] = [("UserDefaultWrapperTest", UDWTestViewController.self)]

    lazy var tableView: UITableView = {
        let tab = UITableView()
        tab.frame = view.frame
        tab.delegate = self
        tab.dataSource = self
        tab.register(UITableViewCell.self, forCellReuseIdentifier: "funcCell")
        return tab
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupUI() {
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "funcCell", for: indexPath)
        let title = dataSource[indexPath.row].0
        cell.textLabel?.text = title
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let next = dataSource[indexPath.row]
        let nextVCType = next.1
        let nextVC = nextVCType.init()
        nextVC.title = next.0
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}
