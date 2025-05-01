//
//  ProverModel.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/27/25.
//

import Foundation

// https://chinese-proverbs.onrender.com/api/proverbs/random


/*
 {
   "_id": "63e6ae053bd28e8c186fdf40",
   "proverb": "木已成舟，生米煮成熟饭。",
   "pinyin": "Mù yǐ chéng zhōu, Shēng mǐ zhǔ chéng shú fàn",
   "translation": "The timber's already a boat; the rice is cooked."
 }
 
 */

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

// MARK: - ProverbModel
struct ProverbModel: Codable {
    let id, proverb, pinyin, translation: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case proverb, pinyin, translation
    }
    
    static func defaultQuote() -> ProverbModel {
        ProverbModel(
            id: "63e6ae053bd28e8c186fdf26",
            proverb: "事实胜于雄辩。",
            pinyin: "Shi shí shèng yú xióng biàn",
            translation: "Facts beat eloquence."
        )
    }
}
