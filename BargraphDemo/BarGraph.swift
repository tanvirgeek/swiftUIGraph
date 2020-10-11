//
//  BarGraph.swift
//  BargraphDemo
//
//  Created by MD Tanvir Alam on 10/10/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct BarGraph: View {
    var reports:[Report]
    var body: some View {
        VStack{
            HStack(alignment: .lastTextBaseline){
                ForEach(self.reports, id:\.year){report in
                    BarView(report: report)
                }
            }.padding()
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph(reports: Report.getAll())
    }
}

struct BarView: View {
    @State private var showGraph:Bool = false
    var report:Report
    var body: some View {
        let value = report.revinue / 500
        let yValue = Swift.min(value*20, 500)
        return VStack{
            Text(String(format: "$%.2f",report.revinue))
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height: self.showGraph ?  CGFloat(yValue) : 0.0)
                
                .onAppear{
                    withAnimation(.default) {
                        self.showGraph = true
                    }
            }
            Text(report.year)
            
        }
    }
}
