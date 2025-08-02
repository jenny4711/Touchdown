//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct FeaturedItemView: View {
    let player:Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    FeaturedItemView(player: players[0])
     
        .padding()
        .background(colorBackground)
}
