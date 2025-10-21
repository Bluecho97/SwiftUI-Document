//
//  SampleViewA.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/21/25.
//

import SwiftUI

struct SampleViewA: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(.all)
            
            Text("This is Sample ViewA!")
                .font(.system(size: 24, weight: .semibold))
        }
    }
}

#Preview {
    SampleViewA()
}
