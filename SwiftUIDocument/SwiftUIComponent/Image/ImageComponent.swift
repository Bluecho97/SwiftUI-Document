//
//  ImageComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/15/25.
//

import SwiftUI


struct ImageComponent: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 36) {
                // MARK: - 1. SF Symbols
                VStack(spacing: 16) {
                    // 기본 SF Symbols
                    HStack {
                        Image(systemName: "chevron.left")
                        Image(systemName: "line.horizontal.3")
                        Image(systemName: "ellipsis.circle")
                    }
                    .font(.system(size: 36))
                    
                    // SF Symbols 아이콘 색상
                    HStack {
                        Image(systemName: "folder.badge.plus")
                        Image(systemName: "heart.circle.fill")
                        Image(systemName: "alarm")
                    }
                    .font(.largeTitle)
                    .symbolRenderingMode(.multicolor)
                    
                    // SF Symbols 아이콘 색상 지정
                    HStack {
                        Image(systemName: "star.circle.fill")
                        Image(systemName: "line.3.horizontal.decrease.circle")
                        Image(systemName: "list.bullet")
                    }
                    .font(.largeTitle)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.yellow, .blue)
                    
                    // SF Symbols 기타
                    HStack {
                        Image(systemName: "rectangle.grid.2x2")
                        Image(systemName: "square.split.2x1")
                        Image(systemName: "square.grid.3x3.fill")
                    }
                    .font(.largeTitle)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.green)
                    .shadow(radius: 3)
                    .symbolRenderingMode(.hierarchical)     // 계층적인 음영을 사용하여 입체감 표현
                }
                
                Divider()
                
                
                // MARK: - 2. 기본 이미지 불러오기
                VStack(alignment: .center) {
                    Image("instagramLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Image("instagramLogo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .border(Color.blue)
                    
                    Image("instagramLogo2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .border(Color.blue)
                }
            }
        }
    }
}


#Preview {
    ImageComponent()
}
