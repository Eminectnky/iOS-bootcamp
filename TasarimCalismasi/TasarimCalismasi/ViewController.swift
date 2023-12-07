//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Emine CETINKAYA on 7.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor:  UIColor(named: "yaziRenk1")!,.font: UIFont(name: "Pacifico-Regular", size: 22)!]
        navigationController?.navigationBar.barStyle = .black //biz .black diyerek navigationController da koyu bir tema kullandığımızı belirtiyoruz böylece ordaki saat, wifi, şarj vb. simgeler beyaza dönüyor.
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

    }


}

