//
//  BuyNowView.swift
//  Buy Now
//
//  Created by Pankaj Kumar Rana on 29/10/24.
//

import SwiftUI

struct BuyNowView: View {
    let price : Double
    let discountPercentage : Int?
    
    var discountedPrice: Double? {
        if let discountPercentage {
            return Double(discountPercentage)  / 100 * price
        } else {
            return nil
        }
        
    }
    
    let discountColor: Color
    let bgColor: Color
    let yOffset: Double
    let discountAngle : Double
     
    
    init(
        price: Double,
        discountPercentage: Int?,
        discountColor: Color = .blue ,
        bgColor: Color = .red,
        yOffset: Double = -20 ,
        discountAngle: Double = -10
    ) {
        self.price = price
        self.discountPercentage = discountPercentage
        self.discountColor = discountColor
        self.bgColor = bgColor
        self.yOffset = yOffset
        self.discountAngle = discountAngle
    }
    var body: some View {
        VStack {
            if let discountPercentage {
                Text("\(discountPercentage) % OFF!")
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .background(discountColor)
                    .clipShape(.rect(cornerRadius: 15))
                    .rotationEffect(Angle(degrees: discountAngle))
                    .offset(y: yOffset)
                    .shadow(radius: 5)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            HStack{
                Text("BUY NOW")
                    .font(.title)
                    .bold()
                Spacer()
                Text("$\(price, specifier: "%.2f")")
                    .foregroundStyle(.white)
                    .strikethrough(discountedPrice != nil )
                
                if let discountedPrice {
                    Text("\(discountedPrice, specifier:" %.2f")")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
            }
            
        }
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(bgColor)
                
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.white)
                

            }
        )
        .padding()
    }
}

#Preview {
    ZStack {
        Color
            .black
            .opacity(0.7)
            .ignoresSafeArea()
                    
        VStack {
            BuyNowView(
                price: 20,
                discountPercentage: 75
            )
            
            BuyNowView(
                price: 20,
                discountPercentage: nil
            )
 
            
            
        }
    }
}
