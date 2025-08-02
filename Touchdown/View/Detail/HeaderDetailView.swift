//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/2/25.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop:Shop
    var body: some View {
        VStack(alignment:.leading,spacing:6,content:{
            Text("Protective Gear")
            Text(shop.selectedProducut?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//:VSTACK
        .foregroundColor(.white)
        

    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
    
}
