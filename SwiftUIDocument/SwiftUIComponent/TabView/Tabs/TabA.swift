//
//  SampleViewA.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/21/25.
//

import SwiftUI

struct TabA: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3).ignoresSafeArea(.all)
            
            Text("This is Sample TabA!")
                .font(.system(size: 24, weight: .semibold))
        }
    }
}

#Preview {
    TabA()
}
