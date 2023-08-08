//
//  ToDoListViewController.swift
//  ToDoApp-VIPER
//
//  Created by Candi Lilun Chiu on 07.08.23.
//

import UIKit


class ToDoListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
    }
    
    @objc
    func addTapped() {
    
    }


}
