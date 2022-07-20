//
//  ContentView.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 14/07/22.
//

import SwiftUI
import CoreData


struct  ContentView: View {
    @State var frameSize = UIScreen.main.bounds.width - 120
    var testLabel = Label("200ml",systemImage: "drop.fill")
    
    var body: some View {

        
        VStack{
            ZStack{
                WaterRing()
                    testLabel
                        .font(.system(size:26))
                        .frame(width: frameSize,  height: frameSize)
            }
            ButtonWater().padding(60)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            TestView()
                .preferredColorScheme(.dark)
        }
    }
}
