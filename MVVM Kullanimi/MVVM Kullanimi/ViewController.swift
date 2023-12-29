//
//  ViewController.swift
//  MVVM Kullanimi
//
//  Created by Emine CETINKAYA on 29.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldSayi2: UITextField!
    @IBOutlet weak var textFieldSayi1: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.sonuc.subscribe(onNext: { s in //Dinleme
            
            self.labelSonuc.text = s
        })
        
    }


    @IBAction func buttonToplama(_ sender: Any) {
        
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text{
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            
        }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text{
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
          
        }
    }
    
}

