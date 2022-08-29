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
    @StateObject private var viewModel = ViewModel()
    var testLabel = Label("200ml",systemImage: "drop.fill")
    @State var input: String = "1"
    
    var body: some View {
        VStack{
            ZStack{
            
 //               WaterRing()
//                    testLabel
//                        .font(.system(size:26))
//                        .frame(width: frameSize,  height: frameSize)
//                TextField("100ml", text: $input)
//                    .foregroundColor(Color.white)
//                    .frame(width: frameSize-80,  height: frameSize-20, alignment: .center)
//                    .font(.system(size:45))
//                    .multilineTextAlignment(.center)
//                    .onChange(of: input){
//                        newValue in viewModel.showOnCircle(userInput: Double(input))
//                    }


                    
                
            }
 //           ButtonWater().padding(16)
          //  Text("\(viewModel.value)")
            BottomMenu()
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
