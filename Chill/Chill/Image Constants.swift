//
//  Image Constants.swift
//  Chill
//
//  Created by Pankaj Kumar Rana on 6/28/25.
//

import Foundation

struct ImageConst: Identifiable {
    let id = UUID()
    let imageName: String
    let photographer: String
    let photographer_url: String
}

let akin = ImageConst(
    imageName: "pexels-akın-akdağ-8089438",
    photographer: "akın akdağ",
    photographer_url: "https://www.pexels.com/photo/thin-leafless-tree-against-dark-sky-with-moon-at-night-8089438/")

let andre = ImageConst(
    imageName: "pexels-andre-furtado-1162251",
    photographer: "Andre Furtado",
    photographer_url: "https://www.pexels.com/photo/lightning-and-gray-clouds-1162251/")

let joshua = ImageConst(
    imageName: "pexels-daniel-jøshua-4122226",
    photographer: "Daniel Jøshua", photographer_url: "https://www.pexels.com/photo/branches-of-evergreen-tree-during-rain-4122226/")

let wheeler = ImageConst(
    imageName: "pexels-james-wheeler-1486974",
    photographer: "James Wheeler", photographer_url: " https://www.pexels.com/photo/symmetrical-photography-of-clouds-covered-blue-sky-1486974/")

let kelly = ImageConst(
    imageName: "pexels-kelly-7753439",
    photographer: "Kelly", photographer_url: "https://www.pexels.com/photo/thunder-lightning-7753439/")

let pixabay1 = ImageConst(
    imageName: "pexels-pixabay-206359",
    photographer: "Pixabay", photographer_url: " https://www.pexels.com/photo/dock-under-cloudy-sky-in-front-of-mountain-206359/")

let pixabay2 = ImageConst(
    imageName: "pexels-pixabay-161247",
    photographer: "Pixabay", photographer_url: "ttps://www.pexels.com/photo/white-black-pagoda-temple-161247/")

let ryutaro1 = ImageConst(
    imageName: "pexels-ryutaro-tsukata-5220100",
    photographer: "James Wheeler", photographer_url: "  https://www.pexels.com/photo/narrow-path-in-daitoku-ji-temple-zen-garden-5220100/")

let ryutaro2 = ImageConst(
    imageName: "pexels-ryutaro-tsukata-6249106",
    photographer: "Ryutaro Tsukata", photographer_url: "   https://www.pexels.com/photo/wooden-footbridge-crossing-river-flowing-in-old-town-near-mountains-6249106/")

let sunset = ImageConst(
    imageName: "pexels-sunsetoned-7283618",
    photographer: "Sunsetoned", photographer_url: " https://www.pexels.com/photo/bright-sky-with-fluffy-clouds-7283618/")

let BB = ImageConst(
    imageName: "pexels-владимир-васильев-12360777",
    photographer: "Владимир Васильев", photographer_url: " https://www.pexels.com/photo/reflection-of-the-sky-and-trees-on-lake-12360777/")


let imageData = [akin,
                 andre,
                 joshua,
                 wheeler,
                 kelly,
                 pixabay1,
                 pixabay2,
                 ryutaro1,
                 ryutaro2,
                 sunset,
                 BB]


