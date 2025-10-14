//
//  DateFormatter.swift
//  SwiftUIDocument
//
//  Created by Lucid on 10/14/25.
//

import SwiftUI

struct DateFormatter: View {
    var body: some View {
        Text(Date(), style: .date)      // 날짜 형식
        Text(Date(), style: .time)      // 시간 형식
    }
}

#Preview {
    DateFormatter()
}
