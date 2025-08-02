//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment:.center,spacing: columnSpacing,pinnedViews: []) {
                Section(header:SectionView(rotateColckwise: false),footer:SectionView(rotateColckwise: true)) {
                    ForEach(categories){
                        category in
                        CategoryItemView(category: category)
                    }
                }
            }//:GRID
            .frame(height:140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
            

        }//:SCROLL
        

    }
}

#Preview(traits:.sizeThatFitsLayout)  {
    CategoryGridView()
      
            .padding()
            .background(colorBackground)
}
