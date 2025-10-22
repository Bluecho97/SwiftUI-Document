//
//  SampleViewB.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/21/25.
//

import SwiftUI

struct TabB: View {
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.3).ignoresSafeArea(.all)
            
            Text("This is Sample TabB!")
                .font(.system(size: 24, weight: .semibold))
        }
    }
}

#Preview {
    TabB()
}
