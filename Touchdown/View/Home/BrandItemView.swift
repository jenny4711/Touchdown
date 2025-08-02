//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct BrandItemView: View {
    let brand:Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1)
            )
    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    BrandItemView(brand: brands[0])
       
        .padding()
        .background(colorBackground)
}
