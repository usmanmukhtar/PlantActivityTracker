//
//  MyPlantsView.swift
//  Plant Activity Tracker
//
//  Created by Usman Mukhtar on 19/09/2020.
//

import SwiftUI

struct MyPlantsView: View {
    @State var searchText = ""
    @State var isActive: Bool = false
    
    var plants = [
        Plants(title: "easter lily", image: "1"),
        Plants(title: "elephant ears", image: "2"),
        Plants(title: "elm trees", image: "3")
    ]
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
            
            List(plants.filter({ "\($0)".contains(searchText.lowercased()) || searchText.isEmpty })){ plants in
                NavigationLink(
                    destination: DetailedView(rootIsActive: self.$isActive),
                    isActive: self.$isActive,
                    label: {
                            Image(plants.image)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(15)
                            
                            Text(plants.title.capitalized)
                    })
            }
        }
        .navigationTitle("My Plants")
    }
}

struct MyPlantsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlantsView()
    }
}

struct Plants: Identifiable {
    var id = UUID()
    var title: String
    var image: String
}
