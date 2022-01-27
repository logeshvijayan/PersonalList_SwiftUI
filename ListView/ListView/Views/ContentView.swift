//
//  ContentView.swift
//  ListView
//
//  Created by Logesh Vijayan on 2022-01-26.
//

import SwiftUI

struct ContentView: View {
    let menuViewModel = MenuViewModel()
    var body: some View {
       NavigationView {
            List(menuViewModel.menu.indices)  { index in
                    NavigationLink  {
                        let personDetails = populateDetailsRow(for: index)
                        DetailView(detailsList: personDetails)
                    } label: {
                        PersonalRow(imageName: "person", title: menuViewModel.menu[index].username)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                    }
            }
            .navigationTitle("Personal")
        }

    }
    
    func populateDetailsRow(for index:Int) -> PersonalDetails {
        let menu = menuViewModel.menu[index]
        return PersonalDetails(email: menu.email, address: menu.address.street, phone: menu.phone, company: menu.company.name, posistion: menu.address.geo)
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
