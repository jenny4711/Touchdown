//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/2/25.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment:.leading,spacing:6,content:{
            Text("Protective Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//:VSTACK
        .foregroundColor(.white)
        

    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    HeaderDetailView()
        .padding()
        .background(Color.gray)
    
}
