//
//  ContentView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct ContentView: View {
     // MARK: - PROPERTIES
    let scenes = UIApplication.shared.connectedScenes
  

    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
//                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color:Color.black.opacity(0.05),radius: 5,x:0,y:5)
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }//:VSTACK
            .background(colorBackground.ignoresSafeArea(.all,edges:.all))
        }//:ZSTACK
        
        .background(colorBackground.ignoresSafeArea(.all,edges:.top))

    }
}
 // MARK: - PREVIEW
#Preview {
    ContentView()
}
