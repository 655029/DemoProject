//
//  DemoTableViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 02/12/21.
//

import UIKit

class DemoTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK:- Interface Builder Outlets
    @IBOutlet weak private var tableView: UITableView!
    
    
    
    //MARK:- Properties
    var array:[String] = []
    var isSelected: Bool = false
    var refershControl = UIRefreshControl()
    
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.applyFinishingTouchesToUIElemnts()
    }
    
    
    //MARK:- Helpers
    private func applyFinishingTouchesToUIElemnts() {
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.refreshControl = refershControl
        refershControl.attributedTitle = NSAttributedString(string: "Loading")
        refershControl.addTarget(self, action: #selector(refreshControllAction(_:)), for: .valueChanged)
//        for _ in 1...20 {
//            array.append("ONE")
//        }
    }
    
    @objc func btn_Action(_ sender: UIButton) {
        print("I have pressed a button with a tag: \(sender.tag)")
        sender.isSelected.toggle()
    }
    
    @objc func refreshControllAction(_ sender: UIRefreshControl) {
        array.append("Hello by refresh \(array.count)")
        tableView.reloadData()
        refershControl.endRefreshing()
    }
    
    //MARK:- UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.myLbl.text = array[indexPath.row]
        cell.selectDeselectBtn.tag = indexPath.row
        cell.selectDeselectBtn.addTarget(self, action: #selector(btn_Action(_:)), for: .touchUpInside)
        return cell
    }
    
    
    //MARK:- UITableViewDelegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
        let cell = tableView.cellForRow(at: indexPath) as! DemoTableViewCell
        cell.selectDeselectBtn.isSelected = true
    }
}
