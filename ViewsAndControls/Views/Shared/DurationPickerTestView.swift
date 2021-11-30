//
//  DurationPickerTestView.swift
//  ViewsAndControls
//
//  Created by Judy Yu on 2021-11-29.
//

import SwiftUI

struct DurationPickerTestView: View {
    @State var hours: Int = 0
    @State var minutes: Int = 0
        
        var body: some View {
                    HStack {
                        Picker("", selection: $hours){
                            ForEach(0..<4, id: \.self) { i in
                                Text("\(i) hours").tag(i)
                            }
                        }.pickerStyle(WheelPickerStyle())
                        Picker("", selection: $minutes){
                            ForEach(0..<60, id: \.self) { i in
                                Text("\(i) min").tag(i)
                            }
                        }.pickerStyle(WheelPickerStyle())
            }.padding(.horizontal)
        }
}

struct DurationPickerTestView_Previews: PreviewProvider {
    static var previews: some View {
        DurationPickerTestView()
    }
}
