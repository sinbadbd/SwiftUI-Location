//
//  ContentView.swift
//  CoffeeApp
//
//  Created by sinbad on 6/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    var categories:[String:[Landmark]] {
        .init(
            grouping: landmarkData,
            by:{$0.category.rawValue}
        )
    }
    
    
    var body: some View {
        NavigationView {
            List (categories.keys.sorted().identified(by: \String.self)) { key in
                
                LocationRow(categoryName: "\(key)".uppercased(), lands: self.categories[key]!)
                    .frame(height: 320)
                .padding(.top)
                .padding(.bottom)
            }
            .navigationBarTitle(Text("Location"))
        }
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
