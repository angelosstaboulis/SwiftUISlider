//
//  ContentView.swift
//  SwiftUISlider
//
//  Created by Angelos Staboulis on 31/10/22.
//

import SwiftUI
import DeviceKit
struct ContentView: View {
    @State var counter:Double=0.0
    @State var screenLeft:Double=300.0
    @State var screenSpacing:Double=15.0
    var body: some View {
        VStack{
            HStack{
                Text("Select Brightness").padding(20)
            }
            HStack{
                Slider(value: $counter, in: 0...100){

                }
                Image(uiImage: UIImage(named: "reset30")!).onTapGesture {
                        counter = 0
                }
            }
            HStack{
                HStack{
                    Text("0").padding(screenSpacing)
                    Text("10").padding(screenSpacing)
                    Text("20").padding(screenSpacing)
                    Text("30").padding(screenSpacing)
                    Text("40").padding(screenSpacing)
                    Text("50").padding(screenSpacing)
                    Text("60").padding(screenSpacing)
                    Text("70").padding(screenSpacing)
                    Text("80").padding(screenSpacing)
                    Text("90").padding(screenSpacing)

                }.padding(18)
                HStack{
                    Text("100")

                }
                

            }.position(CGPoint(x: screenLeft, y: 30))
            
        }.onAppear {
            let deviceName = DeviceKit.Device.current.name!
            setupSliderInAllScreens(device: deviceName)
        }
    }
    func setupSliderInAllScreens(device:String){
        if device == "iPhone 8"{
            screenSpacing = 16.0
            screenLeft = 300.0
        }
        else if device == "iPhone 8 Plus"{
            screenSpacing = 19.5
            screenLeft = 325.0
        }
        else if device == "iPhone 11"{
            screenSpacing = 22.2
            screenLeft = 357.0
        }
        else if device == "iPhone 11 Pro"{
            screenSpacing = 19.2
            screenLeft = 330.0
        }
        else if device == "iPhone 11 Pro Max"{
            screenSpacing = 23.2
            screenLeft = 364.0
        }
        else if device == "iPhone 12"{
            screenSpacing = 20.2
            screenLeft = 345.0
        }
        else if device == "iPhone 12 Pro"{
            screenSpacing = 20.5
            screenLeft = 340.0
        }
        else if device == "iPhone 12 Pro Max"{
            screenSpacing = 24.2
            screenLeft = 373.0
        }
        else if device == "iPhone 13"{
            screenSpacing = 20.2
            screenLeft = 345.0
        }
        else if device == "iPhone 13 Pro"{
            screenSpacing = 20.5
            screenLeft = 342.0
        }
        else if device == "iPhone 13 Pro Max"{
            screenSpacing = 24.2
            screenLeft = 373.0
        }
        else if device == "iPad (9th generation)"{
            screenSpacing = 36.2
            screenLeft = 490.0
        }
        else if device == "iPad Air (4th generation)"{
            screenSpacing = 42.0
            screenLeft = 535.0
        }
        else if device == "iPad Pro (9.7-inch)"{
            screenSpacing = 34.0
            screenLeft = 463.0
        }
        else if device == "iPad Pro (11-inch) (3rd generation)"{
            screenSpacing = 42.0
            screenLeft = 538.0
        }
        else if device == "iPad Pro (12.9-inch) (5th generation)"{
            screenSpacing = 51.0
            screenLeft = 615.0
        }
        else if device == "iPad mini (6th generation)"{
            screenSpacing = 39.7
            screenLeft = 514.0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
