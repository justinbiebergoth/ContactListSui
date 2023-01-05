//
//  ContentView.swift
//  ContactListSui
//
//  Created by hiirari on 02.01.2023.
//

import SwiftUI

struct ContentView: View {
    
 private let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            DetailedContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
