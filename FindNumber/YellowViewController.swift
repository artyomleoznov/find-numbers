//
//  YellowViewController.swift
//  FindNumber
//
//  Created by Артём Леознов on 26.07.2021.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("YellowViewController viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("YellowViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("YellowViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("YellowViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("YellowViewController viewDidDisappear")
    }
    
    deinit {
        print("YellowViewController deinit")
    }

    @IBAction func goToBlueController(_ sender: UIButton) {
        performSegue(withIdentifier: "goToBlue", sender: "Test string")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
            case "goToBlue":
                guard let blueVC = segue.destination as? BlueViewController else { return }
                
                guard let senderValue = sender as? String else { return }

                blueVC.textForLabel = senderValue
            default:
                break;
            }
    }
}
