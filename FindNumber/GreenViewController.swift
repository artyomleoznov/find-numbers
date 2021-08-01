//
//  GreenViewController.swift
//  FindNumber
//
//  Created by Артём Леознов on 26.07.2021.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func goToRoot(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func goToYellow(_ sender: UIButton) {
        guard let viewControllers = self.navigationController?.viewControllers
        else { return }
        
        for vc in viewControllers {
            if vc is YellowViewController {
                self.navigationController?.popToViewController(vc, animated: true)
            }
        }
    }
}
