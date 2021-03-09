//
//  SecondChildVC.swift
//  ChildVC
//
//  Created by Gopakumar MP on 3/9/21.
//  Copyright © 2021 Gopakumar MP. All rights reserved.
//

import Foundation
import UIKit

class SecondChildVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private var tableView:UITableView!
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.darkGray
        self.createTableView()
    }
    
    func createTableView() {
        self.tableView = UITableView(frame: .zero, style: .grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = .secondaryLabel
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        cell.backgroundColor = UIColor.systemBlue
        return cell
        
    }
    
}
