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
            ZStack {
                Color.blue.opacity(0.3).ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("This is Main Page")
                    
                    Button("Next Page") {
                        path.append("First")
                    }
                }
                .navigationDestination(for: String.self) { value in
                    switch value {
                    case "First": FirstPage(path: $path)
                    case "Second": SecondPage(path: $path)
                    case "Third": ThirdPage(path: $path)
                    default: Text("Invalid Page")
                    }
                }
            }
        }
    }
}


#Preview {
    NavigationStackComponent()
}
