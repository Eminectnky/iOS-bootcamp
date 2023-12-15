//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Emine CETINKAYA on 14.12.2023.
//

import UIKit

class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var imageViewUrun: UIImageView!
    
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    @IBOutlet weak var labelUrunAd: UILabel!
    
    
    @IBOutlet weak var hucreArkaplan: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonSepeteEkle(_ sender: Any) {
    }
}
