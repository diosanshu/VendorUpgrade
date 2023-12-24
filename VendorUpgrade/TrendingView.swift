//
//  TrendingView.swift
//  VendorUpgrade
//
//  Created by Haadhya on 23/12/23.
//

import Foundation
import SwiftUI

struct TrendingView: View {
    @State var trendingM : TrendingModel
    var body: some View {
        VStack {
            Image(trendingM.image)
                .resizable()
                .frame(width: 270, height: 150)
            
            HStack {
                Text(trendingM.title)
                    .bold()
                    .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            HStack {
                Text(trendingM.descrip)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            HStack {
                ForEach(0 ..< trendingM.stars) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.subheadline)
                }
                Spacer()
                
                Text(trendingM.price)
                    .font(.subheadline)
                    .bold()
            }
            .padding(.bottom, 30)
            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
        }
        .frame(width: 250, height: 250)
        .cornerRadius(10)
        
    }
    
}

struct TrendingWeek_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView(trendingM: TredingViewModel[0])
    }
}
