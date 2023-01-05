//
//  ContactList.swift
//  ContactListSui
//
//  Created by hiirari on 02.01.2023.
//

import SwiftUI

struct ContactListView: View {
 let persons: [Person]
    
    
    var body: some View {
        NavigationView {
                List(persons, id: \.self) { person in
                    NavigationLink(person.fullName,
                        destination: ContactDetailsView(person: person))
                }
                    .navigationTitle("Contact List")
                    .listStyle(.plain)
            
        }
    }
}
//        List(persons) { person in
//            NavigationLink(destination: ContactDetailsView(person: person)){
//                ContactListRowView(person: person)
//            }
//        }
//        .listStyle(.plain)
//        .navigationTitle("Contacts")
    


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPersons())
    }
}
