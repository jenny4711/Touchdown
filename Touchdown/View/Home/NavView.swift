//
//  NavView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct NavView: View {
     // MARK: - PROPERTIES
    @State private var isAnimated:Bool = false
     // MARK: - Body
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//:BUTTON
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x:0,y:isAnimated ? 0 : -25)
                .onAppear(perform:{
                    withAnimation(.easeOut(duration:0.5)){
                        isAnimated.toggle()
                    }
                   
                })
            
            Spacer()
            
            
            Button(action: {}) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width:14,height:14,alignment: .center)
                        .offset(x:13,y:-10)
                }//:ZSTACK(inBTN)
                

            }

        }//:HSTACK
        

    }
}
 // MARK: - preview
#Preview(traits:.sizeThatFitsLayout)  {
    NavView()
     
        .background(colorBackground)
}
