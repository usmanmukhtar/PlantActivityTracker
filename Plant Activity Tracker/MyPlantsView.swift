//
//  MyPlantsView.swift
//  Plant Activity Tracker
//
//  Created by Usman Mukhtar on 17/09/2020.
//

import SwiftUI

struct MyPlantsView: View {
    @State var searchText = ""
    @State var isActive: Bool = false
    
    var plants = [
        Plants(title: "easter lily", image: "1"),
        Plants(title: "elephant ears", image: "2"),
        Plants(title: "elm trees", image: "3"),
    ]
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
                .padding(.horizontal, 20)
            
            List(plants.filter({ "\($0)".contains(searchText.lowercased()) || searchText.isEmpty})){ plants in
                
                NavigationLink(
                    destination: DetailView(rootIsActive: self.$isActive),
                    isActive: self.$isActive,
                    label: {
                        
                        HStack {
                            Image(plants.image)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(15)
    
                            Text(plants.title.capitalized)
                        }
                    })
            }
        }
        .navigationTitle("My Plants")
    }
}

struct Plants: Identifiable {
    var id = UUID()
    var title: String
    var image: String
}
