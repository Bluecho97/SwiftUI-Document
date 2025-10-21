//
//  TabViewComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/21/25.
//

import SwiftUI


struct TabViewComponent: View {
    
    @State private var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            SampleViewA()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }.tag(0)
//                .toolbarBackground(.black, for: .tabBar)
            
//            Text("홈")
//                .tabItem { Label("홈", systemImage: "house") }
//                .tag(0)
            
            SampleViewB()
                .tabItem {
                    Image(systemName: "pentagon.fill")
                    Text("혜택")
                }.tag(1)
                .toolbarBackground(.white, for: .tabBar)
            
            SampleViewC()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("쇼핑")
                }.tag(2)
        }
        .tint(.red)
    }
}


#Preview {
    TabViewComponent()
}
