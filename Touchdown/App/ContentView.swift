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

                    .background(Color.white)
                    .shadow(color:Color.black.opacity(0.05),radius: 5,x:0,y:5)
                
                ScrollView(.vertical,showsIndicators: false,content:{
                    VStack(spacing:0){
                        FeaturedTabView()
                            .padding(.vertical,20)
                        
                        CategoryGridView()
                           
                        TitleView(title: "Helmets")
                        LazyVGrid(columns:gridLayout,spacing:15,content:{
                            ForEach(products){
                                product in
                                ProductItemView(product: product)
                            }//:LOOK
                            

                        })//:GRID
                        .padding(15)
                        TitleView(title:"Brands")
                        BrandGridView()

                        FooterView()
                            .padding(.horizontal)
                    }//:VSTACK
                 
                })//:Scroll
              

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
