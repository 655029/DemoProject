//
//  SecondViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 06/12/21.
//

import UIKit
protocol DissmissSecondViewController: AnyObject {
    func didTappedLogoutButton(controller: SecondViewController)
}

class SecondViewController: UIViewController {
    
    var delegate: DissmissSecondViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTappedNextBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        self.delegate?.didTappedLogoutButton(controller: self)

    }
    
}
