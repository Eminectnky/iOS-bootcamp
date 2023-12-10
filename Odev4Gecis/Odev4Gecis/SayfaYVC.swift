//
//  SayfaYVC.swift
//  Odev4Gecis
//
//  Created by Emine CETINKAYA on 8.12.2023.
//

import UIKit

class SayfaYVC: UIViewController {
    @IBOutlet weak var labelY: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func buttonGeri(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
}
