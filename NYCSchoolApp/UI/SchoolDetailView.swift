//
//  SchoolDetailView.swift
//  NYCSchoolApp
//
//  Created by Sai Sreenath Adabala on 2/12/24.
//

import SwiftUI

struct SchoolDetailView: View {
    let school: NYCSchool
    var body: some View {
        VStack(alignment: .leading) {
            Text(school.description ?? "")
        }.padding()
      
    }
}

