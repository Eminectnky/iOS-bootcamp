//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Emine CETINKAYA on 18.12.2023.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath:IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    @IBOutlet weak var imageViewFilm: UIImageView!
    
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
    
}
