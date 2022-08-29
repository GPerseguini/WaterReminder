//
//  SwiftUIView.swift
//  Water Reminder
//
//  Created by Gabriel Perseguini on 14/07/22.
//

import SwiftUI

struct WaterRing: View {
    @State var frameSize = UIScreen.main.bounds.width - 120
    @EnvironmentObject var viewModel : ViewModel
    @State var input: String = "1"
    
    
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
                    .trim(from: 0, to: viewModel.current)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin: .round))
                    .frame(width: frameSize, height: frameSize)
                    .rotationEffect(.init(degrees: -90))
                
                //Este é o circulo para arrastar
                Circle()
                    .fill(Color.white).frame(width: 40, height: 40)
                    .offset(x: frameSize/2).rotationEffect(.init(degrees: viewModel.value))
                    .gesture(DragGesture().onChanged(viewModel.onDrag(value: )))
                    .rotationEffect(.init(degrees: -90))
                    .onChange(of: viewModel.value) {
                        newValue in viewModel.showOnTextField(userInput: viewModel.value)
                    }
                
                TextField("", text: $viewModel.input)
               // TextField("100", text: $viewModel.input)
                    .foregroundColor(Color.white)
                    .frame(width: frameSize-80,  height: frameSize-20, alignment: .center)
                    .font(.system(size:45))
                    .multilineTextAlignment(.center)
                    .onChange(of: viewModel.input){
                        newValue in viewModel.showOnCircle(userInput: Double(viewModel.input))
                    }
                }
            
        }
        .environmentObject(viewModel)
    }
    

            

    
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WaterRing()
                .preferredColorScheme(.dark)
        }
    }
}
