//
//  GreetingsTip.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 02/10/24.
//

import Foundation
import TipKit


struct GreetingsTip : Tip {
    var title:Text {
        Text(" Click on the text and disc")
    }
    var message: Text? {
        Text("New will be randomly generated and observe nice animations! ")
    }
    var asset: Image? {
        Image(systemName: "figure.walk.motion")
    }
}
