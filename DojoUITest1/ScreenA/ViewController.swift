//
//  ViewController.swift
//  DojoUITest1
//
//  Created by Rafael Ramos on 30/11/23.
//

import UIKit

class ViewController: UITableViewController {
    
    let items: [String] = [
        "São Paulo",
        "Rio de Janeiro",
        "Juiz de Fora"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")!
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller: ScreenBViewController = .init()
        controller.label.text = items[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
}
