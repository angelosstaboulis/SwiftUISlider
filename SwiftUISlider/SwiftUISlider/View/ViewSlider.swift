//
//  ViewSlider.swift
//  SwiftUISlider
//
//  Created by Angelos Staboulis on 1/11/22.
//

import SwiftUI

struct ViewSlider: View {
    @State var counter:Double=0.0
    var body: some View {
        HStack{
            Slider(value: $counter, in: 0...100){

            }
            Image(uiImage: UIImage(named: "reset30")!).onTapGesture {
                    counter = 0
            }
            
    }
    }
}

struct ViewSlider_Previews: PreviewProvider {
    static var previews: some View {
        ViewSlider()
    }
}
