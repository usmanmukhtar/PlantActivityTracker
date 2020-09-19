//
//  ContentView.swift
//  Plant Activity Tracker
//
//  Created by Usman Mukhtar on 15/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var isActive:Bool = false
    var body: some View {
        NavigationView {
            
            ZStack(alignment: .bottomLeading){
            
                if self.isActive {
                    MyPlantsView()
                } else {
                    Color("background")
                        .edgesIgnoringSafeArea(.all)
                        
                    Image("background-image")
                        .resizable()
                        .opacity(0.3)
                        .offset(x: 0, y: 100)
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 400)
                    
                    Image("background-image")
                        .resizable()
                        .opacity(0.3)
                        .offset(x: -UIScreen.main.bounds.width + 150, y: 30)
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    
                    VStack{
                        Image("logo")
                        Text("Plant Activity Tracker")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(false)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
