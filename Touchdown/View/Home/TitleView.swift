//
//  TitleView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PREVIEW
   var title:String
    var body: some View {
       
        
         // MARK: - BODY
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//:HSTACK
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
        

    }
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
