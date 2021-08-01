//
//  BlueViewController.swift
//  FindNumber
//
//  Created by Артём Леознов on 26.07.2021.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var textForLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel.text = textForLabel

    }
    @IBAction func goToGreen(_ sender: UIBarButtonItem) {
        
        let storyboared = UIStoryboard(name: "Main", bundle: nil)
        guard let greenVC = storyboared.instantiateViewController(withIdentifier: "greenVC") as? GreenViewController else { return }
        greenVC.title = "Зелёный"
        self.navigationController?.pushViewController(greenVC, animated: true)
    }
}
