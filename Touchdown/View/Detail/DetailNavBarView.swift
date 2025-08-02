//
//  DetailNavBarView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct DetailNavBarView: View {
    var body: some View {
        HStack{
            Button(action: {}) {
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
        

    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    DetailNavBarView()
     
        .padding()
        .background(Color.gray)
}
