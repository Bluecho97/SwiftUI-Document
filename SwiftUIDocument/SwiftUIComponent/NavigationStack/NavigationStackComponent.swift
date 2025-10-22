//
//  NavigationStackComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/22/25.
//

import SwiftUI


struct NavigationStackComponent: View {
    
    @State var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Text("This is Main Page")
                
                Button("Next Page") {
                    path.append("First")
                }
            }
            .navigationDestination(for: String.self) { value in
                switch value {
//                case "First": FirstView(path: $path)
//                case "Second": SecondView(path: $path)
//                case "Third": ThirdView(path: $path)
                default: Text("Invalid Page")
                }
            }
        }
    }
}


#Preview {
    NavigationStackComponent()
}
