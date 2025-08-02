//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/2/25.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }//:BTN
        .padding(15)
        .background(
            Color(
                red:sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
        )
        .clipShape(Capsule())

    }
}

#Preview(traits:.sizeThatFitsLayout) {
    AddToCartDetailView()
        .padding()
}
