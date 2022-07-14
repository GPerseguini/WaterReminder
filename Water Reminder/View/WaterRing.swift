//
//  SwiftUIView.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 14/07/22.
//

import SwiftUI

struct WaterReminder: View {
    @State var frameSize = UIScreen.main.bounds.width - 120
    @State var current: CGFloat = 0
    @State var value: Double = 0
    
    var body: some View {
        
        //Código Anel
        VStack {
            ZStack {
                
                //O circulo cinza que é exibido no início
                Circle()
                    .stroke(Color.secondary, style: StrokeStyle(lineWidth: 40, lineCap: .butt, lineJoin: .round))
                    .frame(width: frameSize,  height: frameSize)
                
                //O circulo que aparece ao mover o inferior
                Circle()
                    .trim(from: 0, to: current)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin: .round))
                    .frame(width: frameSize, height: frameSize)
                    .rotationEffect(.init(degrees: -90))
                
                //Este é o circulo para arrastar
                Circle()
                    .fill(Color.white).frame(width: 40, height: 40)
                    .offset(x: frameSize/2).rotationEffect(.init(degrees: value))
                    .gesture(DragGesture().onChanged(onDrag(value:)))
                    .rotationEffect(.init(degrees: -90))

            }
        }
        
        /* //Código Botão
        Button(action: {
            print("Clicked")
        }){
            Text("Tomar água")
                .foregroundColor(.blue)
                .font(.title)
                .padding()
                .border(Color.white, width: 5)
        }
         */
        
    }
    
    func onDrag(value: DragGesture.Value) {
        let  radianVector = CGVector(dx: value.location.x , dy: value.location.y)
        let radian = atan2(radianVector.dy - 20, radianVector.dx - 20)
        var angleValue = radian * 180 / .pi
        
        // Se atingir 100%, ele deve resetar
        if (angleValue < 0) {
            angleValue = 360 + angleValue
        }
        
        withAnimation(Animation.linear(duration: 0.25)) {
            let  current = angleValue / 360
            self.current = current
            self.value = Double(angleValue)
        }
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WaterReminder().preferredColorScheme(.dark)
            WaterReminder().previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)).preferredColorScheme(.dark).previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
