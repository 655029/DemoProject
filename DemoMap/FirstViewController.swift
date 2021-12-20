//
//  FirstViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 30/11/21.
//

import UIKit

class FirstViewController: UIViewController, DissmissSecondViewController {
    func didTappedLogoutButton(controller: SecondViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        navigationController?.pushViewController(secondVc, animated: true)
    }
    
    
    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func didTappedButton(_ sender: UIButton) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVc = (stroyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController)!
        secondVc.modalPresentationStyle = .fullScreen
        secondVc.delegate = self
        self.present(secondVc, animated: true, completion: nil)
        //        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //        let secondVc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        //        navigationController?.pushViewController(secondVc, animated: true)
    }
    
    @IBAction func didTappedExitButton(_ sender: UIButton) {
//        exit(0)
        let alert = UIAlertController(title: "Exit", message: "Do you want to exit", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OKay", style: .destructive, handler: { (action: UIAlertAction!) in
            exit(0)
        })
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
}
