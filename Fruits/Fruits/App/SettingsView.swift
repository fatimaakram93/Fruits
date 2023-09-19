//
//  SettingsView.swift
//  Fruits
//
//  Created by Fatima Akram on 18.09.23.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle"))
                    {
                        Divider()
                        HStack(spacing: 20) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("dfhdjfdhfkafhjakhfkahjfhjkafhjahfjahffdffasfasffggfhadhdshggjkhjkhjkbnbvcsdjff")
                                .font(.footnote)
                        }
                        .padding()
                    }
                }
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
            }

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
