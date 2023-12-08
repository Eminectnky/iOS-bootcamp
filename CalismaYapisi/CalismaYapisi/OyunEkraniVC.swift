//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Emine CETINKAYA on 8.12.2023.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi: Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            print("-------OyunEkraniVC--------")
            print("Kişi ad    : \(k.ad!)")
            print("Kişi yaş   : \(k.yas!)")
            print("Kişi boy   : \(k.boy!)")
            print("Kişi bekar : \(k.bekar!)")
        }
    }
    

    @IBAction func buttonGeri(_ sender: Any) {
       // navigationController?.popViewController(animated: true) //Bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) //Anasayfaya dönüş
        
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
}
