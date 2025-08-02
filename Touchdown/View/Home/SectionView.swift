//
//  SectionView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct SectionView: View {
    @State var rotateColckwise:Bool
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
               .rotationEffect(Angle(degrees:rotateColckwise ? 90 : -90))
            Spacer()
        }//:VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
        

    }
}

#Preview {
    SectionView(rotateColckwise: true)
    
        .previewLayout(.fixed(width:120,height:240))
        .padding()
        .background(colorBackground)
}
