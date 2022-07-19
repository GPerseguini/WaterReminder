//
//  TestView.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 15/07/22.
//

import SwiftUI


struct TestView: View {
    @State var frameSize = UIScreen.main.bounds.width - 120
    var testLabel = Label("200ML",systemImage: "drop.fill")
    
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


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
            .preferredColorScheme(.dark)
    }
}
