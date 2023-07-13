//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Burhan Göksel on 19.11.2022.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
