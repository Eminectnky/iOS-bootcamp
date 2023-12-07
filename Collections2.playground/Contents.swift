import UIKit

//Set

var meyveler = Set<String>()

//Veri Ekleme

meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)


meyveler.insert("Amasya Elması")
print(meyveler)


for meyve in meyveler {
    print("Sonuç : \(meyve)")
}


for (index, meyve) in meyveler.enumerated() {
    print("\(index). -> \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boş mu : \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()
print(meyveler)

 
//Dictionary - HashMap - Map

var iller = [Int: String]()

//Veri Ekleme

iller[44] = "Malatya"
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

//Veri Okuma

print(iller[44]!)

//Veri Güncelleme

iller[44] = "Yeni Malatya"
print(iller)

for (anahtar, deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 44)
print(iller)


