//
//  ContentView.swift
//  BargraphDemo
//
//  Created by MD Tanvir Alam on 10/10/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.getAll())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
