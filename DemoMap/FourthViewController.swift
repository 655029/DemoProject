//
//  FourthViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 06/12/21.
//

import UIKit

protocol DissmissFourthViewController: AnyObject {
    func didTappedLogoutButton(controller: FourthViewController)
}

class FourthViewController: UIViewController {
    var delegate: DissmissFourthViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTappedButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        delegate?.didTappedLogoutButton(controller: self)
        


    }
}
