//
//  ToppartDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/2/25.
//

import SwiftUI

struct ToppartDetailView: View {
    @State private var isAnimating:Bool = false
    var body: some View {
        HStack(alignment:.center,spacing:6){
            // TODO: price
            VStack(alignment:.leading,spacing: 6){
                Text("Price")
                    .fontWeight(.semibold)
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor:.leading)
            }
            .offset(y:isAnimating ? -50 : -75)
            Spacer()
            
            // TODO: photo
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y:isAnimating ? 0 : -35)
            
            
            
        }//:HSTACK
        .onAppear {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
        

        
        
    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    ToppartDetailView()
        .padding()
    
}
