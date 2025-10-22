//
//  PageB.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/22/25.
//

import SwiftUI


struct SecondPage: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.3).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hello, This is SecondView!")
                
                Button("Next Page") {
                    path.append("Third")            // Push
                }
                
                Button("Previous Page") {           // Pop
                    path.removeLast()
                }
                
                Button("At First Page") {
                    path.removeLast(path.count)     // Reset
                }
            }
            .navigationTitle("2nd Screen")
        }
    }
}


#Preview {
    SecondPage(path: .constant(NavigationPath()))
}
