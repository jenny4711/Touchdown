//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/2/25.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop:Shop
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }) {
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
                red:shop.selectedProducut?.red ?? sampleProduct.red,
                green:shop.selectedProducut?.green ?? sampleProduct.green,
                blue:shop.selectedProducut?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())

    }
}

#Preview(traits:.sizeThatFitsLayout) {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
