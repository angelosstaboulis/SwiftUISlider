//
//  ContentView.swift
//  SwiftUISlider
//
//  Created by Angelos Staboulis on 31/10/22.
//

import SwiftUI
import DeviceKit
struct ContentView: View {
    var body: some View {
        VStack{
            HeaderView()
            ViewSlider()
            Numbers()
    }
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
