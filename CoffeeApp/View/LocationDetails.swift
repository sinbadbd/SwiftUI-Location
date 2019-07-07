//
//  LocationDetails.swift
//  CoffeeApp
//
//  Created by sinbad on 7/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct LocationDetails : View {
    var landmark : Landmark
    var body: some View {
        List {
            ZStack (alignment: .bottom){
                Image(landmark.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .blur(radius: 10)
                HStack {
                    VStack (alignment: .leading, spacing: 8 ){
                        Text(landmark.name)
                            .color(.white)
                            .font(.largeTitle)
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack {
                Text(landmark.park)
                    .color(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }
                    .padding(.top, 50)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        
    }
}
struct OrderButton : View {
    var body : some View {
        Button(action: {}) {
            Text("Order Now")
            }
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .font(.headline)
    }
}

#if DEBUG
struct LocationDetails_Previews : PreviewProvider {
    static var previews: some View {
        LocationDetails(landmark: landmarkData[1])
    }
}
#endif
