import SwiftUI

struct ContentView: View {
    // Khởi tạo dữ liệu mẫu
    @State private var todos: [Todo] = [
        Todo(title: "Learn SwiftUI", isCompleted: true),
        Todo(title: "Build Todo App", isCompleted: false),
        Todo(title: "Master State Management", isCompleted: false)
    ]
    
    @State private var selectedFilter: FilterType = .all
    
    // Computed property để kiểm tra Empty State
    var filteredTodos: [Todo] {
        switch selectedFilter {
        case .all:
            return todos
        case .completed:
            return todos.filter { $0.isCompleted }
        case .pending:
            return todos.filter { !$0.isCompleted }
        }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Component Thêm Task
                AddTodoView(todos: $todos)
                
                // Bộ lọc trạng thái
                HStack {
                    FilterButton(title: "All", filter: .all, selectedFilter: $selectedFilter)
                    FilterButton(title: "Completed", filter: .completed, selectedFilter: $selectedFilter)
                    FilterButton(title: "Pending", filter: .pending, selectedFilter: $selectedFilter)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
                
                // Xử lý hiển thị List hoặc Empty State
                if filteredTodos.isEmpty {
                    ContentUnavailableView(
                        "No Tasks",
                        systemImage: "tray.fill",
                        description: Text("You don't have any tasks in this list yet.")
                    )
                } else {
                    List {
                        // Lặp trực tiếp trên mảng $todos để giữ Binding hợp lệ
                        ForEach($todos) { $todo in
                            // Áp dụng điều kiện lọc ngay khi render
                            if selectedFilter == .all ||
                               (selectedFilter == .completed && todo.isCompleted) ||
                               (selectedFilter == .pending && !todo.isCompleted) {
                                
                                TodoRowView(todo: $todo)
                            }
                        }
                        .onDelete(perform: deleteTodo)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Todo App")
        }
    }
    
    // Hàm xóa Task
    private func deleteTodo(at offsets: IndexSet) {
        // Tối ưu xóa đúng phần tử khi đang ở chế độ filter
        let idsToDelete = offsets.map { filteredTodos[$0].id }
        todos.removeAll { todo in
            idsToDelete.contains(todo.id)
        }
    }
}

#Preview {
    ContentView()
}
