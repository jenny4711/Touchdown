//
//  LogoView.swift
//  Touchdown
//
//  Created by Ji y LEE on 8/1/25.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing:4){
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width:30,height:30,alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)

        }//:HSTACK
        
        
    }
}



 // MARK: - Preview
#Preview(traits:.sizeThatFitsLayout)  {
    LogoView()
    
        .background(colorBackground)
}

