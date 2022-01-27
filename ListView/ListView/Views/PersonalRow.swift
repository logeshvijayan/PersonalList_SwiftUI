//
//  PersonalRow.swift
//  ListView
//
//  Created by Logesh Vijayan on 2022-01-26.
//

import SwiftUI

struct PersonalRow: View {
    var imageName: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(title)
                .font(.system(size: 20, weight: .semibold, design: .serif))
        }
    }
}

struct PersonalRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonalRow(imageName: "person", title: "Logesh")
    }
}
