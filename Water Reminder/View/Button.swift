//
//  Button.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 15/07/22.
//

import SwiftUI

struct ButtonWater: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Clicked")
                
            }) {
                HStack {
                    Image(systemName: "water")
                        .font(.title)
                    Text("Water it")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(40)
            }.padding(10)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWater()
            .preferredColorScheme(.dark)
    }
}
