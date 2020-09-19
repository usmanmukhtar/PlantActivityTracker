//
//  ImageSliderView.swift
//  Plant Activity Tracker
//
//  Created by Usman Mukhtar on 19/09/2020.
//

import SwiftUI

struct ImageSliderView: View {
    
    @State var backgroundOffset: CGFloat = 0
    
    var body: some View {
        GeometryReader { g in
                HStack (spacing: 0){
                    Rectangle()
                        .frame(width: g.size.width)
                        .overlay(
                            Image("1")
                                .resizable()
                        )
                    
                    Rectangle()
                        .frame(width: g.size.width)
                        .overlay(
                            Image("2")
                                .resizable()
                        )
                
                    Rectangle()
                        .frame(width: g.size.width)
                        .overlay(
                            Image("3")
                                .resizable()
                        )
                }
                .offset(x: -(self.backgroundOffset * g.size.width))
                .animation(.default)
            
        }
        .clipShape(CustomShape(leftCorner: .bottomLeft, rightCorner: .bottomRight, radii: 40))
        .frame(height: (UIScreen.main.bounds.height / 2))
        .gesture(
            DragGesture()
                .onEnded({ value in
                    if value.translation.width > 10 {
                        if self.backgroundOffset > 0{
                            self.backgroundOffset -= 1
                        }
                    }else if value.translation.width < 10 {
                        if self.backgroundOffset < 2{
                            self.backgroundOffset += 1
                        }
                    }
                })
        )
        HStack {
            RoundedRectangle(cornerRadius: 40, style: .continuous)
                .fill(Color.black.opacity(self.backgroundOffset == 0 ? 0.7 : 0.2))
                .frame(width: self.backgroundOffset == 0 ? 30 : 10, height: 10)
            RoundedRectangle(cornerRadius: 40, style: .continuous)
                .fill(Color.black.opacity(self.backgroundOffset == 1 ? 0.7 : 0.2))
                .frame(width: self.backgroundOffset == 1 ? 30 : 10, height: 10)
            RoundedRectangle(cornerRadius: 40, style: .continuous)
                .fill(Color.black.opacity(self.backgroundOffset == 2 ? 0.7 : 0.2))
                .frame(width: self.backgroundOffset == 2 ? 30 : 10, height: 10)
        }
        .frame(width: UIScreen.main.bounds.width)
        .animation(.default)
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
