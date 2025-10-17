//
//  ButtonComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/17/25.
//

import SwiftUI


struct ButtonComponent: View {
    var body: some View {
        VStack(spacing: 36) {
            Button(action: {
                
            }, label: {
                
            })
            
            Button(action: {
                
            }, label: {
                Text("인증하기")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.2))
                    )
            })
            
            Button(action: {}) {
                Text("금액 가리기")
                    .frame(maxWidth: .infinity, minHeight: 32)
            }
            
            
            // 1. accessibilityLabel & accessibilityHint
            Button(action: {}) {
                Image(systemName: "trash")
            }
            .accessibilityLabel("삭제")
            .accessibilityHint("이 버튼을 누르면 항목이 삭제됩니다.")

        }
    }
}


#Preview {
    ButtonComponent()
}
