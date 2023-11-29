import UIKit

// Soru 1
// Km Mil Dönüşümü

class Soru1 {
    
    func soru1(km: Double) -> Double {
        let dönüstür = km * 0.621
        return dönüstür
    }
}

let s1 = Soru1()

let sonuc = s1.soru1(km: 5)
print("Sonuc: \(sonuc)")

// Sonuc: 3.105


// Soru 2
// Dikdörtgen alan hesaplama

class Soru2 {
    
    func soru2(a: Int, b: Int) {
        let alan = a * b
        print("Dikdörtgenin alanı: \(alan)' dir.")
    }
}

let s2 = Soru2()

 s2.soru2(a: 5, b: 10)

// Dikdörtgenin alanı: 50' dir.


// Soru 3
// Faktöriyel Hesaplama

class Soru3 {
    func faktöriyelH(n: Int) -> Int {
        if n == 0 || n == 1 {
            return 1
            
        }else{
            return n * faktöriyelH(n: n - 1)
        }
    }
}

let faktöriyel = Soru3()
let sonucf = faktöriyel.faktöriyelH(n: 5)
print("Faktöriyel Sonucu: \(sonucf)")

// Faktöriyel Sonucu: 120

// Soru 4
// Harf Sayısını Bulma

class Soru4 {
    func harfBul(kelime: String){
        var sayac = 0
        for harf in kelime {
            if harf == "E" || harf == "e" {
                sayac += 1
            }
        }
       
        print("Girilen kelimede toplam \(sayac) tane E/e harfi var.")
    }
}

let harfS = Soru4()
harfS.harfBul(kelime: "Emine")

// Girilen kelimede toplam 2 tane E/e harfi var.


// Soru 5
// İç Açı Hesaplama

class Soru5 {
    
    func icAciToplami(kenarS : Int) -> Int {
        let toplam = Int((kenarS - 2) * 180) / Int(kenarS)
        return toplam
    }
}

let iat = Soru5().icAciToplami(kenarS: 4)
print("Dörtgenin bir iç açısı: \(iat) derece, iç açılarının toplamı ise: \(iat * 4) derecedir.")

// Dörtgenin bir iç açısı: 90 derece, iç açılarının toplamı ise: 360 derecedir.


// Soru 6
// Maaş Hesabı

class Soru6 {
    
    func maasHesapla(günS: Int) -> Double {
        
        let calismaS = günS * 8
        let normalSUcret: Double = 40
        let mesaiSUcret: Double = 80
        let mesaiSinir: Int = 150
        let normalMaas = Double(calismaS) * normalSUcret
        
        var mesaiS = 0
        if calismaS > mesaiSinir {
            mesaiS = calismaS - mesaiSinir
        }
        
        let mesaiMaas = Double(mesaiS) * mesaiSUcret
        let toplamMaas = normalMaas + mesaiMaas
        
        return toplamMaas
        
    }
    
}

let maas =  Soru6()
var maasSonuc = maas.maasHesapla(günS: 5)
print("Toplam Maaş \(maasSonuc) ₺ dir")

//1600.0 ₺ dir


// Soru 7
// Otopark Ücreti

class Soru7 {
    func otoparkUcretiHesapla(sure: Int) -> Int {
        let ilkSaat = 50
        let ekSaat = 10

        guard sure > 0 else { return 0 }


        let tamSaatler = sure / 60 //2 saat
        let kalanDakika = sure % 60 //3 dk

        // 4. Eğer kalan dakika varsa bir saat eklenir, aksi halde ekSaatUcret 0 olur
        let ekSaatUcret = kalanDakika > 0 ? ekSaat : 0

        // 5. Toplam ücreti hesapla: ilk saat ücreti + tam saatlerin sayısı * ekSaat + ekSaatUcret
        let toplamUcret = ilkSaat + ((tamSaatler - 1) * ekSaat) + ekSaatUcret

        return toplamUcret
    }
}

let ucretHesaplama = Soru7()

let ucret = ucretHesaplama.otoparkUcretiHesapla(sure: 123)
