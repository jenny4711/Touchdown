//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment:.leading,spacing: 6,content:{
            // TODO: photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red:product.red,green:product.green,blue:product.blue))
            .cornerRadius(12)
            // TODO: name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            
            // TODO: price
            Text("$\(product.formattedPrice)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })//:VSTACK
        

    }
}

#Preview(traits:.fixedLayout(width: 200, height: 300))  {
    ProductItemView(product: products[0])
     
        .padding()
        .background(colorBackground)
    
}
