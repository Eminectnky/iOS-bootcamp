//
//  ViewController.swift
//  Date&TimePickerKullanimi
//
//  Created by Emine CETINKAYA on 18.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfSaat: UITextField!
    @IBOutlet weak var tfTarih: UITextField!
    
    var datePicker: UIDatePicker?
    var timePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfTarih.inputView = datePicker
        
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
       
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetod))
        view.addGestureRecognizer(dokunmaAlgilama) //bu yapı ekrana dokunulduğu zaman dokunmaAlgilamaMetod unu çalıştırır
    }
    @objc func dokunmaAlgilamaMetod(){
        print("Ekrana dokunuldu")
        view.endEditing(true) //sayfa üzerinde açılmış yapıları kapatmak için kullanılır 
    }

}

