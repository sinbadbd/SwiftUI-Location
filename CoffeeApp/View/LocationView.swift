//
//  LocationView.swift
//  CoffeeApp
//
//  Created by sinbad on 6/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct LocationView : View {
    
    var landmark : Landmark
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Image(landmark.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack (alignment: .leading, spacing: 5) {
                Text(landmark.name)
                    .color(.primary)
                    .font(.headline)
                Text(landmark.park)
                    .color(.secondary)
                    .font(.subheadline)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .frame(height: 40)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct LocationView_Previews : PreviewProvider {
    static var previews: some View {
        LocationView(landmark: landmarkData[0])
    }
}
#endif
