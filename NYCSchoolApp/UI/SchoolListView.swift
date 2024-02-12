//
//  SchoolListView.swift
//  NYCSchoolApp
//
//  Created by Sai Sreenath Adabala on 2/12/24.
//

import SwiftUI

struct SchoolListView: View {
    @ObservedObject var viewModel = NYCSchoolViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.schools,id: \.dbn) { school in
                NavigationLink(destination: SchoolDetailView(school: school)) {
                    SchoolRow(school: school)
                }
                
            }
            .navigationBarTitleDisplayMode(.automatic)
            .navigationTitle("NYC High School")
        }
    }
}
