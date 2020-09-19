//
//  DetailedView.swift
//  Plant Activity Tracker
//
//  Created by Usman Mukhtar on 19/09/2020.
//

import SwiftUI

struct DetailedView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var rootIsActive: Bool
    var body: some View {
        VStack(alignment: .leading){
            ImageSliderView()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    Text("Swiss cheese plant")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.top, 30)
                    
                    Text("Monstera delicious")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean orci libero, scelerisque varius interdum a, cursus vitae dui. Proin iaculis sed lacus non porttitor. Nam ultrices sem in finibus euismod. Quisque ut tempus felis. Quisque et rutrum velit, id porta sem. Nunc placerat nunc quis est aliquam,")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Text("Care guide")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.top, 30)
                    
                    LazyHGrid(rows: [GridItem(.adaptive(minimum: 80))], spacing: 16){
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Water")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "drop.triangle.fill")
                                        .font(.title2)
                                    
                                    Text("every")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("7 days")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Humidity")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "wind")
                                        .font(.title2)
                                    
                                    Text("upto")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("82%")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Size")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "drop.triangle.fill")
                                        .font(.title2)
                                    
                                    Text("height")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("38\" - 48\"")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CareGuide"))
                            .frame(width: 80, height: 140, alignment: .center)
                            .overlay(
                                VStack{
                                    Text("Location")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                    
                                    Image(systemName: "house.fill")
                                        .font(.title2)
                                    
                                    Text("shaded")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .padding(.top, 10)
                                    
                                    Text("Indoors")
                                        .fontWeight(.semibold)
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white)
                            )
                    }
                }
                
                NavigationLink(
                    destination: TrackingView(shouldPopToRoot: self.$rootIsActive),
                    label: {
                        Text("Show My Progress")
                            .font(.title2)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color("background").opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
            }
            .padding(.horizontal, 20)
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }) {
                                    Image(systemName: "chevron.left")
                                        .font(Font.title2.bold())
                                        .foregroundColor(Color("CareGuide"))
                                }
        )
    }
}

struct CustomShape: Shape {
    var leftCorner: UIRectCorner
    var rightCorner: UIRectCorner
    var radii: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [leftCorner, rightCorner], cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}
