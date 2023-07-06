//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-04-24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
//                        .listRowSeparator(.hidden)
//                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(
                    appetizer: viewModel.selectedAppetizer!,
                    isShowingDetail: $viewModel.isShowingDetail
                )
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }
    
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
        AppetizerListView().preferredColorScheme(.dark)
    }
}
