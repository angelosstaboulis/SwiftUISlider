//
//  HeaderView.swift
//  SwiftUISlider
//
//  Created by Angelos Staboulis on 1/11/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Text("Select Brightness").padding(20)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
