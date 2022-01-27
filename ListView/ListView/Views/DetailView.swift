//
//  DetailView.swift
//  ListView
//
//  Created by Logesh Vijayan on 2022-01-26.
//

import SwiftUI

struct DetailView: View {
    var detailsList: PersonalDetails
    
    var body: some View {
        
        VStack {
            MapView(latitude: Double(detailsList.posistion.lat)!, longitude: Double(detailsList.posistion.lng)!)
                .ignoresSafeArea(edges: .top)
                               .frame(height: 250)
            
            List {
                PersonalRow(imageName: "mail", title: detailsList.email)
                PersonalRow(imageName: "pin", title: detailsList.address)
                PersonalRow(imageName: "phone", title: detailsList.phone)
                PersonalRow(imageName: "pencil", title: detailsList.company)
            }
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(detailsList: )
//    }
//}

extension View {
    
    func hasScrollEnabled(_ value: Bool) -> some View {
        self.onAppear {
            UITableView.appearance().isScrollEnabled = value
        }
    }
}
