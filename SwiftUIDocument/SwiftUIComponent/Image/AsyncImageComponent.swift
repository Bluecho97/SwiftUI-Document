//
//  AsyncImageComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/16/25.
//

import SwiftUI


struct AsyncImageComponent: View {
    var body: some View {
        // 통신 오류가 나면 아무것도 안나타남
        AsyncImage(url: URL(string: "https://via.placeholder.com/150"))
        
        AsyncImage(url: URL(string: "https://via.placeholder.com/150")) { Image in
            Image
        } placeholder: {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 300, height: 525)
                .overlay(
                    ProgressView()
                        .tint(Color.blue)
                )
        }
    }
}


#Preview {
    AsyncImageComponent()
}
