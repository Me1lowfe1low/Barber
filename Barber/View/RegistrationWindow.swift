//
//  RegistrationWindow.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 29.12.2022.
//

import SwiftUI

struct RegistrationWindow: View {
    var client: client
    @State var clientFirstName: String = ""
    @State var clientMiddleName: String = ""
    @State var clientLastName: String = ""
    @State var clientPhone: String = ""
    @State var clientEmail: String = ""
    @State var birthdayDate: Date = Date()
    
    var body: some View {
        VStack{
            Section("First Name") {
                TextField("First Name", text: $clientFirstName)
                    .padding()
                    .border(.black)
            }
            Section("Middle Name") {
                TextField("Middle Name", text: $clientMiddleName)
                    .padding()
                    .border(.black)
            }
            Section("Last Name") {
                TextField("Last Name", text: $clientLastName)
                    .padding()
                    .border(.black)
            }
            Section("Birth date") {
                DatePicker("Date", selection: $birthdayDate, displayedComponents: [.date])
            }
            Section("Email") {
                TextField("Email", text: $clientPhone)
                    .padding()
                    .border(.black)
            }
            Section("Phone") {
                TextField("X-XXX-XXX-XX-XX", text: $clientEmail)
                    .padding()
                    .border(.black)
            }
            Spacer()
            Button(action: {
                Text("Create button")
            }) {
                Text("Create")
                    .padding()
                    .background(.green)
                    .clipShape(Capsule())
            }
        }
        .padding()
    }
}
/*
struct RegistrationWindow_Previews: PreviewProvider {
    static var previews: some View {
       // RegistrationWindow()
    }
}*/
