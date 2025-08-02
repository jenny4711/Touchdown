//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content:{
            LazyHGrid(rows:gridLayout,spacing:columnSpacing,content:{
                ForEach(brands){
                    brand in
                    BrandItemView(brand: brand)
                }
            })//:GRID
            .frame(height:200)
            .padding(15)

        })//:SCROLL
        

    }
}

#Preview(traits:.sizeThatFitsLayout) {
    BrandGridView()
    
        .background(colorBackground)
}
