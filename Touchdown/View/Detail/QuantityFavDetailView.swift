//
//  QuantityFavDetailView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/2/25.
//

import SwiftUI

struct QuantityFavDetailView: View {
    @State private var counter:Int = 0
    var body: some View {
        HStack(alignment: .center,spacing: 6) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }//:BUTTON
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth:36)
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }//:HSTACK
        

        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview(traits:.sizeThatFitsLayout) {
    QuantityFavDetailView()
        .padding()
}
