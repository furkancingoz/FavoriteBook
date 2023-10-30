//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Furkan Cingöz on 30.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{ //navigation yapabilmesi için bütün görünümün navigation view içerisinde olması gerekiyor
            
            List {
                
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElements: element)) { //navigation ile başka bir sayfaya rowlara tıklanınca göndermek için elementsin altına yazdık textlerde bunun içinde olmalı
                                Text(element.name)
                            }
                            
                            
                        }
                    }
                    
                }
                
            }.navigationBarTitle(Text("Favorite Book"))//List sayfasına başlık ekleme
        }
    }
}
#Preview {
    ContentView()
}
