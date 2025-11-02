//
//  Fonts.swift
//  SwiftUIDocument
//
//  Created by Lucid on 11/2/25.
//

import SwiftUI


// MARK: - Fonts 예시
enum MyAppFonts {
    static let heading1 = SwiftUI.Font.system(size: 28, weight: .bold)
    static let heading2 = SwiftUI.Font.system(size: 22, weight: .semibold)
    static let body = SwiftUI.Font.system(size: 16, weight: .regular)
    static let caption = SwiftUI.Font.system(size: 12, weight: .light)
}


struct Fonts: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("헤딩 1")
                .font(MyAppFonts.heading1)
            
            Text("헤딩 2")
                .font(MyAppFonts.heading2)
            
            Text("본문 내용입니다. 가독성 좋은 폰트를 사용하고 있어요.")
                .font(MyAppFonts.body)
            
            Text("캡션 또는 보조 텍스트")
                .font(MyAppFonts.caption)
                .foregroundColor(.gray)
        }
        .padding()
    }
}


#Preview {
    Fonts()
}
