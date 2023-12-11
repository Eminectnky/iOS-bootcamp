//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Emine CETINKAYA on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("Tamam Seçildi")
            
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("Tamam Seçildi")
            
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
        
    }
    
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
      
        alertController.addTextField { textField in //0.index
            textField.placeholder = "Veri giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true //Şifre girerken girdiğimiz ifadeyi noktaya çeviriyor
            
        }
        
        alertController.addTextField() //1.index
        
        let tamamAction = UIAlertAction(title: "Kaydet", style: .destructive){ action in
            
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            
            if let alinanVeri = tf.text, let alinanVeri1 = tf1.text {
                print("Veri : \(alinanVeri) - \(alinanVeri1)")
            }
        
            
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
        
    }
    
}

