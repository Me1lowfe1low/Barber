//
//  ClientAccountView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 29.12.2022.
//

import SwiftUI

struct ClientAccountView: View {
    var client: client
    @State var oldPassword: String = ""
    @State var newPassword1: String = ""
    @State var newPassword2: String = ""
    @State var passwordProvided: Bool = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                Image(systemName: "person.badge.plus")
                    .font(.largeTitle)
                Circle()
                    .opacity(0.1)
                    .frame(width: 200)
            }
            .padding()
            Divider()
            VStack(alignment: .leading) {
                Section("First name") {
                    Text("\t\(client.firstName)")
                }
                Section("Middle name") {
                    Text("\t\(client.middleName)")
                }
                Section("Last name") {
                    Text("\t\(client.lastName)")
                }
                Section("Date of birth") {
                    Text("\t" + client.birthDate.formatted(date: .numeric, time: .omitted))
                }
                Section("Phone") {
                    Text("\t\(client.phoneNumber)")
                }
                Section("E-Mail") {
                    Text("\t\(client.email)")
                }
                Divider()
                Section("Password") {
                    Section("Old password") {
                        TextField("Old password", text: $oldPassword)
                            .padding()
                            .border(.black)
                    }
                    Section("New password") {
                        TextField("New password", text: $newPassword1)
                            .padding()
                            .border(.black)
                        TextField("Repeat new password", text: $newPassword2)
                            .padding()
                            .border(.black)
                    }
                }
            }
            .padding()
            Button(action: {
                Text("Password is changed")
            }) {
                Text("Change password")
                    .padding()
                    .background(.green)
                    .clipShape(Capsule())
            }
        }
    }
}

struct PersonalAccout_Previews: PreviewProvider {
    static var previews: some View {
        ClientAccountView(client: client.clientSample)
    }
}
