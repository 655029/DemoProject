//
//  MainViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 16/12/21.
//

import UIKit
import SideMenu

struct Property: Equatable {
    let name: String
    let image: String
}

class MainViewController: UIViewController {
    
    private let sideMenu = SideMenuNavigationController(rootViewController: BSideMenuViewController())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.defaultManager.addPanGestureToPresent(toView: view)
        
       
        
    }
    
    @IBAction func didTapMenuButton() {
        present(sideMenu, animated: true)
        
    }
    
    
}




class BSideMenuViewController: UITableViewController {
    var menuItems:[Property] = [] {
        didSet {
            menuItems.append(Property(name: "Rana Sanga", image: "radio-on-button"))
        }
    }
    
    lazy var isCollapseButton: UIButton = {
        let isCollapseButton = UIButton()
        isCollapseButton.translatesAutoresizingMaskIntoConstraints = false
        isCollapseButton.setImage(UIImage(systemName: "arrowshape.turn.up.left"), for: .normal)
        
        return isCollapseButton
    }()
    
    override func viewDidLoad() {
        let nib = UINib(nibName: "TestTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TestTableViewCell")
        for _ in 1...3 {
            menuItems.append(Property(name: "Durvade", image: "radio-on-button"))
        }
        
        view.addSubview(isCollapseButton)
        let constraints = [
            isCollapseButton.centerYAnchor.constraint(equalTo: tableView.centerYAnchor),
            isCollapseButton.trailingAnchor.constraint(equalTo: tableView.trailingAnchor, constant: -10),
            isCollapseButton.heightAnchor.constraint(equalTo: view.widthAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("Hi")
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as? TestTableViewCell
        cell?.populateUI(Property(name: menuItems[indexPath.row].name, image: menuItems[indexPath.row].image))
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        view.backgroundColor = .red
    }
    
}
