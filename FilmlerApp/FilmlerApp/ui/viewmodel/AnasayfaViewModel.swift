//
//  AnasayfaViewModel.swift
//  FilmlerApp
//
//  Created by Emine CETINKAYA on 18.05.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var frepo = FilmlerDaoRepository()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    init(){
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    func filmleriYukle() {
        frepo.filmleriYukle()
      
    }
}
