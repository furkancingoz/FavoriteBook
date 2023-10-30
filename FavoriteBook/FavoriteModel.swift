//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Furkan Cingöz on 30.10.2023.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}


struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

//Musician
let lilzey = FavoriteElements(name: "Lilzey", imageName: "lilzey", description: "Queen")
let ati242 = FavoriteElements(name: "Ati242", imageName: "ati", description: "2 4 2 Digga")
let motive = FavoriteElements(name: "Motive", imageName: "motive", description: "TRAP LORD")

let favoriteMusician = FavoriteModel(title: "Fav Musician", elements: [lilzey,ati242,motive])


//Movies
let harrypotter = FavoriteElements(name: "Harry Potter", imageName: "harry", description: "Harry Poter")
let tera = FavoriteElements(name: "Terabitha köprüsü", imageName: "tera", description: "Terabitha köprüsü :(")
let ironman = FavoriteElements(name: "Iron Man", imageName: "iron", description: "Super Hero")

let favoriteMovies = FavoriteModel(title: "Fav Movies", elements: [harrypotter,tera,ironman])


let myFavorites = [favoriteMovies,favoriteMusician]
