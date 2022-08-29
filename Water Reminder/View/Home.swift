//
//  teste.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 25/08/22.
//

import SwiftUI



struct  Home: View {
    @State var frameSize = UIScreen.main.bounds.width - 120
    @StateObject private var viewModel = ViewModel()
    var testLabel = Label("200ml",systemImage: "drop.fill")
    @State var input: String = "1"
    
    var body: some View {
        VStack{
            WaterRing().padding(50)

                    
                

           ButtonWater()
        }

        .preferredColorScheme(.dark)
        .environmentObject(viewModel)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
