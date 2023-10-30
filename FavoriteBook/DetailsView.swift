//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Furkan Cingöz on 30.10.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElements : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElements.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            Text(chosenFavoriteElements.name)
                .font(.largeTitle)
                .padding()
            
            Text(chosenFavoriteElements.description)
        }
    }
}

#Preview {
    DetailsView(chosenFavoriteElements: lilzey)
}
