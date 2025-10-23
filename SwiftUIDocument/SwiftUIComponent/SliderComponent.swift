//
//  SliderComponent.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/23/25.
//

import SwiftUI

struct SliderComponent: View {
    var body: some View {
        VStack {
            // AccessibilityValue
            Slider(value: .constant(0.7))
                .accessibilityLabel("밝기")
                .accessibilityValue("70퍼센트")
        }
    }
}

#Preview {
    SliderComponent()
}
