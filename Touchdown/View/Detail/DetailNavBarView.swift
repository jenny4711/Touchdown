//
//  DetailNavBarView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct DetailNavBarView: View {
    @EnvironmentObject var shop:Shop
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProducut = nil
                    shop.showingProduct = false
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                
            }
        }//:HSTACK
        .padding(.top,20)
        

    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    DetailNavBarView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
