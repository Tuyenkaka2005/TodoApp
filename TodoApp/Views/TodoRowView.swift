import SwiftUI

struct TodoRowView: View {
    @Binding var todo: Todo

    var body: some View {
        HStack {
            Button {
                withAnimation {
                    todo.isCompleted.toggle()
                }
            } label: {
                Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(todo.isCompleted ? .green : .secondary)
                    .font(.title3)
            }
            .buttonStyle(.plain) // Tránh xung đột gesture khi đặt trong List

            Text(todo.title)
                .strikethrough(todo.isCompleted, color: .secondary)
                .foregroundColor(todo.isCompleted ? .secondary : .primary)

            Spacer()
        }
        .padding(.vertical, 4)
    }
}
