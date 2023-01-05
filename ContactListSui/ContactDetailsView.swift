//
//  ContactDetailsView.swift
//  ContactListSui
//
//  Created by hiirari on 02.01.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack{
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
        
        
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getPersons()[0])
    }
}
