//
//  ModelView WaterRing.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 18/07/22.
//

import SwiftUI

//MODEL VIEW
//extension WaterRing {
    class ViewModel: ObservableObject {
        
        @Published var current: CGFloat = 0
        @Published var value: Double = 0
        
        func onDrag(value: DragGesture.Value) {
            let  radianVector = CGVector(dx: value.location.x , dy: value.location.y)
            let radian = atan2(radianVector.dy - 20, radianVector.dx - 20)
            var angleValue = radian * 180 / .pi

            // Se atingir 100%, ele deve resetar
            if (angleValue < 0) {
                angleValue = 360 + angleValue
            }
            
            withAnimation(Animation.linear(duration: 0.25)) {
                let current = angleValue / 360
                self.current = current
                self.value = Double(angleValue)
            }
        }
        
        func onClick () -> String {
            var aux = self.current * 200
            return String(format: "%.0f", Double(aux))
            //return  (String(convert))
        }
        
        func showOnCircle(userInput: Double?) {
            guard var unwrapped = userInput else{
                self.value = 0
                self.current = 0
                return
            }
            let userObjective  : Double = 200
            if (  unwrapped < 0) {
                unwrapped = 360 +  unwrapped
            }
            withAnimation(Animation.linear(duration: 0.25)){
            self.value =  unwrapped/userObjective * 360
            self.current = self.value / 360
            }
        }
        

    }
    
//}
