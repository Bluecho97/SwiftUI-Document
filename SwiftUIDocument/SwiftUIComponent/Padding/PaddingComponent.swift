//
//  PaddingComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/20/25.
//

import SwiftUI


struct PaddingComponent: View {
    var body: some View {
        VStack(spacing: 36) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding([.leading, .bottom], 20)
                .border(Color.blue, width: 2)
//                .padding([.bottom, .trailing], 20)
            
            Text("Hello, World!")
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 5, trailing: 15))
                .border(.red)
            
            Text("테두리만 있는 텍스트")
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 1)
                )
        }
    }
}


#Preview {
    PaddingComponent()
}
