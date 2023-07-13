//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Burhan Göksel on 19.11.2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let dataPublished: String
    let ur1: String
    
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(
            name: "10 Dakikada Mayasız Pamuk Poğaça",
            image: "https://i.nefisyemektarifleri.com/2022/11/15/10-dakikada-mayasiz-pamuk-pogaca-13.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Appetizer",
            dataPublished: "2022-11-11",
            ur1: "https://www.nefisyemektarifleri.com/10-dakikada-mayasiz-pamuk-pogaca/"
        ),
        Recipe(
            name: "Bardakta Sufle",
            image: "https://i.nefisyemektarifleri.com/2023/07/07/bardakta-sufle-7.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Snack",
            dataPublished: "2022-11-11",
            ur1: "https://i.nefisyemektarifleri.com/2023/07/13/labneli-pasta-kremasi-tarifi.jpg"
        ),
        Recipe(
            name: "Labneli Pasta Kreması",
            image: "https://i.nefisyemektarifleri.com/2023/07/13/labneli-pasta-kremasi-tarifi.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Breakfast",
            dataPublished: "2022-11-11",
            ur1: "https://www.nefisyemektarifleri.com/10-dakikada-mayasiz-pamuk-pogaca/"
        ),
        Recipe(
            name: "Sade Mercimek Çorbası",
            image: "https://i.nefisyemektarifleri.com/2023/07/10/sade-mercimek-corbasi-tarifi-10.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Dessert",
            dataPublished: "2022-11-11",
            ur1: "https://www.nefisyemektarifleri.com/10-dakikada-mayasiz-pamuk-pogaca/"
        ),
        Recipe(
            name: "İçli Köfte",
            image: "https://i.nefisyemektarifleri.com/2023/07/12/icli-kofte-favoriniz-olacak.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Drink",
            dataPublished: "2022-11-11",
            ur1: "https://www.nefisyemektarifleri.com/10-dakikada-mayasiz-pamuk-pogaca/"
        ),
        Recipe(
            name: "Bonibonlu Kurabiye",
            image: "https://i.nefisyemektarifleri.com/2023/07/13/bonibonlu-kurabiye-videolu.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Snack",
            dataPublished: "2022-11-11",
            ur1: "https://www.nefisyemektarifleri.com/10-dakikada-mayasiz-pamuk-pogaca/"
        ),
        Recipe(
            name: "Erişteli Mercimekli Soğuk Ayran Çorbası",
            image: "https://i.nefisyemektarifleri.com/2023/07/13/eristeli-mercimekli-soguk-ayran-corbasi.jpg",
            description: "Bu poğaçayı mayasız olduğuna kimse inanmayacak mayalı poğaçadan bile yumuşak puf puf dokuda çok pratik ve lezzetli .çayınız demini alana kadar hazır kabartma tozuyla hazırlandığı için bekleme yok 10 dakikada şipşak hazırlaya bileceğiniz bir tarif bırakıyorum şiddetle tavsiye ederim kesin deneyin",
            ingredients: "2 su bardağı yoğurt- 2su bardağı sıvı yağ-2 paket kabarma tozu-1 tatlı kaşığı tuz-5 su bardağı un",
            directions: "Alarak pürüzsüz kıvam alana kadar karıştıralım. Biraz un, alarak spotula ile karıştırıp kabartma tozunu ekleyelim. Kalan unu kontrollü ekleyerek kulak memesi yumuşaklığında hamur elde edelim.",
            category: "Salad",
            dataPublished: "2022-11-11",
            ur1: "https://www.nefisyemektarifleri.com/10-dakikada-mayasiz-pamuk-pogaca/"
        ),
    ]
}
