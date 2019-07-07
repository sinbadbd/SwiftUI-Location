//
//  LocationRow.swift
//  CoffeeApp
//
//  Created by sinbad on 7/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct LocationRow : View {
    
    var categoryName: String
    var lands : [Landmark]
    
    var body: some View {
        VStack (alignment: .leading){
            Text(self.categoryName)
                .font(.title)
            ScrollView (showsHorizontalIndicator: false){
                HStack {
                    ForEach (self.lands.identified(by: \.name)) { landmark in
                        
                        NavigationButton(destination: LocationDetails(landmark: landmark)) {
                            LocationView(landmark: landmark)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
} 

#if DEBUG
struct LocationRow_Previews : PreviewProvider {
    static var previews: some View {
        LocationRow(categoryName: "The Street", lands: landmarkData)
    }
}
#endif
