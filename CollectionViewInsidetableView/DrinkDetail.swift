//
//  DrinkDetail.swift
//  Nested tableView Demo SwiftUI
//
//  Created by Rana AITS on 3/11/20.
//  Copyright © 2020 Rana AITS. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    var body: some View {
        List{
            ZStack(alignment: .bottom) {
                 
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                
                HStack{
                    VStack(alignment: .leading, spacing: 8.0){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
                
            
            
            
            VStack {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
            }
            .padding(.top)
            .padding(.bottom)
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}



struct OrderButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Order Now")
        }.frame(width: 200, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(10)
            
            
    
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[1])
    }
}
