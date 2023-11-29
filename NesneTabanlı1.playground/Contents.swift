import UIKit

class Ev {
    var pencereSayisi: Int?
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
    
}


class Saray : Ev{
    
    var kuleSayisi : Int?
    
    init(kuleSayisi: Int, pencereSayisi: Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}



class Villa : Ev {
    
    var garajVarMi : Bool?
    
    init(garajVarMi: Bool, pencereSayisi: Int ) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}


let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)


print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)


//Override

class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
    
}

class Memeli : Hayvan {
    
  
}


class Kedi : Memeli {
    
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}


let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() //Kalıtım yok, kendi fonksiyonunu çalıştırdı.
memeli.sesCikar() //Kalıtım var, üst sınıfın fonksiyonunu çalıştırdı.
kedi.sesCikar() //Kalıtım var, kendi metodunu çalıştırdı.
kopek.sesCikar() //Kalıtım var, kendi metodunu çalıştırdı.

