//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct ProductDetailView: View {

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
            // TODO: detail bottom part
            // TODO: ratings + sizes
            // TODO: description
            // TODO: quantity + favourite
            // TODO: add to cart
            Spacer()
        }//:VSTACK
        .ignoresSafeArea(.all,edges:.all)
        .background(
            Color(
            red:sampleProduct.red,
            green:sampleProduct.green,
            blue:sampleProduct.blue
            ).ignoresSafeArea(.all,edges: .all)
        )
        

    }
}

#Preview(traits:.fixedLayout(width: 275, height: 812))  {
    ProductDetailView()
 
}
