//
//  AddRecipe.swift
//  RecipeSaver
//
//  Created by Burhan Göksel on 21.11.2022.
//

import SwiftUI



struct AddRecipe: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var selectedCategory: Category = Category.dessert
    @State private var navigateToRecipe = false
    
    
    @Environment(\.dismiss) var dismiss
        
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Name")){
                    TextField("Recipe Name", text:$name)
                }
                
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases){category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Description")){
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")){
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    }label:{
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeView(recipe: recipeVM.recipes.sorted { $0.dataPublished > $1.dataPublished }[0])
                            .navigationBarBackButtonHidden(true)
                                   } label: {
                            Button{
                                saveRecipe()
                                navigateToRecipe = true
                            }label:{
                                Label("Done", systemImage: "checkmark")
                                    .labelStyle(.iconOnly)
                            }
                            .disabled(name.isEmpty)
                        }
                        }
                    
                
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipe {
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
            
        let dataPublished = dateFormatter.string(from: now)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients:ingredients, directions:directions, category: selectedCategory.rawValue, dataPublished: dataPublished, ur1: "")
        
        recipeVM.addRecipe(recipe: recipe)
    }
}
