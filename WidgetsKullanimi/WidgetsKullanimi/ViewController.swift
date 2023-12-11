//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Emine CETINKAYA on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        
        imageView.image = UIImage(named: "mutlu")
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch : ON")
        }else{
            print("Switch : OFF")
        }
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndex )
        print("Seçim: \(secilenKategori!)")
    }
    
    
    @IBAction func goster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)")
        let secilenIndex = segmentedController.selectedSegmentIndex
        let secilenKategori = segmentedController.titleForSegment(at: secilenIndex )
        print("Segmented Durum: \(secilenKategori!)")
        
    }
    
    
}

