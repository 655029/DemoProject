//
//  TestTableViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 02/12/21.
//

import UIKit

class TestTableViewController: UIViewController {
    

    @IBOutlet weak var DataTableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TestTableViewCell", bundle: nil)
        DataTableVIew.register(nib, forCellReuseIdentifier: "TestTableViewCell")

        // Do any additional setup after loading the view.
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
