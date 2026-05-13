
import SwiftUI

struct AddTodoView: View {
    @Binding var todos : [Todo]
    @State private var taskTitle = ""
    
    var body: some View{
        HStack{
            TextField("Enter task...", text: $taskTitle)
                .textFieldStyle(.roundedBorder)
                .submitLabel(.done)
                .onSubmit{
                    addTask()
                }
            Button("Add"){
                addTask()
            }
            .buttonStyle(.borderedProminent)
            .disabled(taskTitle.trimmingCharacters(in: .whitespaces).isEmpty)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
    
    private func addTask(){
        let trimmedTitle = taskTitle.trimmingCharacters(in: .whitespaces)
        guard !trimmedTitle.isEmpty else {return}
        
        let newTodo = Todo(title: trimmedTitle, isCompleted: false)
        withAnimation{
            todos.append(newTodo)
        }
        taskTitle = ""
        
    }
}
