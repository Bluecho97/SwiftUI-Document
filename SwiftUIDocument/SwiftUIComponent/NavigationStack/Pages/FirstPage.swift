//
//  PageA.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/22/25.
//

import SwiftUI


struct FirstPage: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.3).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hello, This is FirstView!")
                
                Button("Next Page") {
                    path.append("Second")            // Push
                }
                
                Button("Previous Page") {           // Pop
                    path.removeLast()
                }
                
                Button("At First Page") {
                    path.removeLast(path.count)     // Reset
                }
            }
            .navigationTitle("1st Screen")
        }
    }
}


#Preview {
    FirstPage(path: .constant(NavigationPath()))
}
