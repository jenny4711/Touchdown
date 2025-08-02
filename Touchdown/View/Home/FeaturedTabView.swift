//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players){
                player in
                FeaturedItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }//:TAB
        .frame(height:320)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    FeaturedTabView()
   
        .background(Color.gray)
}
