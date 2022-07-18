//
//  TestView.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 15/07/22.
//

import SwiftUI


struct TestView: View {
    //@State var ab = WaterRing()
    
    var body: some View {

        
        VStack{
            WaterRing()
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
