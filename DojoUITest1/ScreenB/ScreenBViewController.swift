//
//  ViewController.swift
//  DojoUITest1
//
//  Created by Rafael Ramos on 30/11/23.
//

import UIKit

class ScreenBViewController: UIViewController {
    
    lazy var label: UILabel = {
        let label: UILabel = .init()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(label)
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        label.text = "TEXTO"
    }
}
