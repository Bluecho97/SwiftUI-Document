//
//  SampleViewC.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/21/25.
//

import SwiftUI

struct TabC: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            Text("This is Sample TabC!")
                .font(.system(size: 24, weight: .semibold))
        }
    }
}

#Preview {
    TabC()
}
