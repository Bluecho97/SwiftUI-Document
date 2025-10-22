//
//  PageC.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/22/25.
//

import SwiftUI


struct ThirdPage: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.3).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hello, This is ThirdView!")
                Text("This is LastView")
                
                Button("Previous Page") {           // Pop
                    path.removeLast()
                }
                
                Button("At First Page") {
                    path.removeLast(path.count)     // Reset
                }
            }
            .navigationTitle("3rd Screen")
        }
    }
}


#Preview {
    ThirdPage(path: .constant(NavigationPath()))
}
