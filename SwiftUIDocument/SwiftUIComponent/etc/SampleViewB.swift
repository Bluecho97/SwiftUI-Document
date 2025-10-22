//
//  SampleViewB.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/21/25.
//

import SwiftUI

struct SampleViewB: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea(.all)
            
            Text("This is Sample ViewB!")
                .font(.system(size: 24, weight: .semibold))
        }
    }
}

#Preview {
    SampleViewB()
}
