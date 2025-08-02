//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop:Shop
    var body: some View {
        
        VStack(alignment: .leading,spacing:5) {
            // TODO: navbar
            DetailNavBarView()
                .padding(.horizontal)
                .padding(.top)
            
            // TODO: header
            HeaderDetailView()
                .padding(.horizontal)
            
            // TODO: detail top part
            ToppartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // TODO: detail bottom part
            VStack(alignment:.center,spacing: 0){
                // TODO: ratings + sizes
                
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                // TODO: description
                ScrollView(.vertical,showsIndicators: false,content:{
                    Text(shop.selectedProducut?.description ?? sampleProduct.description)
                        .font(.system(.body,design:.rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })//:SCROLL
                
                
                // TODO: quantity + favourite
                QuantityFavDetailView()
                    .padding(.vertical,10)
                // TODO: add to cart
                AddToCartDetailView()
                    .padding(.bottom,20)
                Spacer()
            }//:VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
            
            
            
        }//:VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all,edges:.all)
        .background(
            Color(
                red:shop.selectedProducut?.red ?? sampleProduct.red,
                green:shop.selectedProducut?.green ?? sampleProduct.green,
                blue:shop.selectedProducut?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all,edges: .all)
        )
        

    }
}
    
    #Preview(traits:.fixedLayout(width: 275, height: 812))  {
        ProductDetailView()
            .environmentObject(Shop())
        
    }

