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
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {

        
        VStack{
            ZStack{
                WaterRing()
                    testLabel
                        .font(.system(size:26))
                        .frame(width: frameSize,  height: frameSize)
            }
            ButtonWater().padding(60)
            Text("\(viewModel.value)")
        }
        .preferredColorScheme(.dark)
        .environmentObject(viewModel)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
