//
//  Colors.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/25/25.
//

import SwiftUI


// MARK: - Colors 예시
enum MyAppColors {
    static let primary = Color("PrimaryColor")
    static let secondary = Color("SecondaryColor")
    static let background = Color("BackgroundColor")
    static let textPrimary = Color("TextPrimary")
    static let textSecondary = Color("TextSecondary")
    static let error = Color.red
}


struct Colors: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("주요 텍스트")
                .foregroundColor(MyAppColors.textPrimary)

            Text("보조 텍스트")
                .foregroundColor(MyAppColors.textSecondary)

            Button(action: {}) {
                Text("프라이머리 버튼")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(MyAppColors.primary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            RoundedRectangle(cornerRadius: 8)
                .fill(MyAppColors.secondary)
                .frame(height: 100)
                .overlay(Text("Secondary 배경").foregroundColor(.white))

        }
        .padding()
        .background(MyAppColors.background.ignoresSafeArea())
    }
}


#Preview {
    Colors()
}
