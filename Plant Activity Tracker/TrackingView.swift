//
//  TrackingView.swift
//  Plant Activity Tracker
//
//  Created by Usman Mukhtar on 16/09/2020.
//

import SwiftUI

struct TrackingView: View {
    @Binding var shouldPopToRoot: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (spacing: 20){
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 35)], alignment: .center, spacing: 35) {
                    ZStack (alignment: .bottom){
                        Rectangle()
                            .fill(Color.blue)
                            .frame(maxWidth: .infinity, maxHeight: 40, alignment: .bottom)
                        
                        VStack{
                            Text("Water")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            HStack (spacing: 10){
                                Spacer()
                                
                                Text("2")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                
                                VStack (alignment: .leading){
                                    Text("days")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.005)
                                        .lineLimit(1)
                                    
                                    Text("left")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                .foregroundColor(Color.white.opacity(0.5))
                                
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        .padding(.vertical, 20)
                    }
                    .frame(height: 200)
                    .background(Color.blue.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    ZStack (alignment: .bottom){
                        Rectangle()
                            .fill(Color.green)
                            .frame(maxWidth: .infinity, maxHeight: 120, alignment: .bottom)
                        
                        VStack{
                            Text("Nutrients")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            HStack (spacing: 10){
                                Spacer()
                                Text("18")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                
                                VStack (alignment: .leading){
                                    Text("days")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.005)
                                        .lineLimit(1)
                                    
                                    Text("left")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                .foregroundColor(Color.white.opacity(0.5))
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        .padding(.vertical, 20)
                    }
                    .frame(height: 200)
                    .background(Color.green.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    ZStack (alignment: .bottom){
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(maxWidth: .infinity, maxHeight: 150, alignment: .bottom)
                        
                        VStack{
                            Text("Sunlight")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            HStack (spacing: 10){
                                Spacer()
                                Text("14")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                
                                VStack (alignment: .leading){
                                    Text("hrs")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.005)
                                        .lineLimit(1)
                                    
                                    Text("left")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                .foregroundColor(Color.white.opacity(0.5))
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        .padding(.vertical, 20)
                    }
                    .frame(height: 200)
                    .background(Color.yellow.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    ZStack (alignment: .bottom){
                        Rectangle()
                            .fill(Color.orange)
                            .frame(maxWidth: .infinity, maxHeight: 100, alignment: .bottom)
                        
                        VStack{
                            Text("Repot")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            HStack (spacing: 10){
                                Spacer()
                                Text("34")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                
                                VStack (alignment: .leading){
                                    Text("days")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.005)
                                        .lineLimit(1)
                                    
                                    Text("left")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                .foregroundColor(Color.white.opacity(0.5))
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        .padding(.vertical, 20)
                    }
                    .frame(height: 200)
                    .background(Color.orange.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                }
                
                Text("Make sure the tasks are completed before the resources run out. We will send you a reminder to supply nutrients and water to plants.")
                    .foregroundColor(.gray)
                
                HStack {
                    Text("Other plants in the house")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
//                    NavigationLink(
//                        destination: MyPlantsView(shouldPopToRoot: self.$rootIsActive),
//                        label: {
//                            Text("View All")
//                                .fontWeight(.bold)
//                                .foregroundColor(Color.gray.opacity(0.7))
//                        })
                    
                        Button(action: {
                            self.shouldPopToRoot = false
                        }){
                            Text("View All")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray.opacity(0.7))
                        }.buttonStyle(PlainButtonStyle())
                }.padding(.top, 20)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: Array(repeating: GridItem(.flexible()), count: 1), spacing: 20) {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                                .cornerRadius(15)
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                                .cornerRadius(15)
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                                .cornerRadius(15)
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                                .cornerRadius(15)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .navigationTitle("Tracking Detail")
    }
}
