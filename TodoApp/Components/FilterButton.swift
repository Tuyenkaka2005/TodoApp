import SwiftUI

struct FilterButton: View {
    let title: String
    let filter: FilterType
    @Binding var selectedFilter: FilterType
    
    var body: some View{
        Button{
            withAnimation {
                selectedFilter = filter
            }
        }label: {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.vertical, 6)
                .padding(.horizontal, 16)
                .background(selectedFilter == filter ? Color.accentColor:Color.secondary.opacity(0.15))
                .foregroundColor(selectedFilter == filter ? .white: .primary)
                .cornerRadius(20)
        }
    }
}
