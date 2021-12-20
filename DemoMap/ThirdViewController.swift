//
//  ThirdViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 06/12/21.
//

import UIKit

class ThirdViewController: UIViewController, DissmissFourthViewController {
    func didTappedLogoutButton(controller: FourthViewController) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVc = stroyboard.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        navigationController?.pushViewController(secondVc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTappedNextBtn(_ sender: UIButton) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVc = stroyboard.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        secondVc.modalPresentationStyle = .fullScreen
        secondVc.delegate = self
        present(secondVc, animated: true, completion: nil)
    }

}
