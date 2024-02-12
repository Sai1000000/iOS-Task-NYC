//
//  SchoolRow.swift
//  NYCSchoolApp
//
//  Created by Sai Sreenath Adabala on 2/12/24.
//

import SwiftUI

struct SchoolRow: View {
    let school : NYCSchool
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(school.schoolName ?? "")
            Text(school.dbn)
        }
        .padding()
    }
}


