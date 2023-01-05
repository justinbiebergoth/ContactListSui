//
//  DetailedContactList.swift
//  ContactListSui
//
//  Created by hiirari on 02.01.2023.
//

import SwiftUI

struct DetailedContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
                List(persons) { person in
                    Section(header: Text(person.fullName).font(.headline)) {
                            Label(person.email, systemImage: "phone")
                            Label(person.phone, systemImage: "tray")
                            
                        }
                        .navigationTitle("Contact List")
                    }
            }
        }
    }
struct DetailedContactList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactListView(persons: Person.getPersons())
    }
}
