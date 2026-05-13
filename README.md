
# 📝 TodoApp — SwiftUI Clean Architecture

Một ứng dụng Quản lý công việc (Todo List) được xây dựng hoàn toàn bằng **SwiftUI**, tuân thủ nghiêm ngặt các tiêu chuẩn Clean Code, áp dụng triệt để việc phân tách Component và tối ưu hóa luồng dữ liệu (State Management).

---

## 📸 Screenshots

<img src="https://github.com/user-attachments/assets/b5517582-9530-40c1-9169-46219666c524" width="220" title="Light Mode">
<img src="https://github.com/user-attachments/assets/e496c35f-e195-437a-a544-30c21841fe8e" width="220" title="Dark Mode">
<img src="https://github.com/user-attachments/assets/929da23c-1f87-4d9e-b424-3cdb4ce81b56" width="220" title="Delete Todo">
<img src="https://github.com/user-attachments/assets/a752d0f1-b34d-4a74-bc6f-5dc60cb12a44" width="220" title="Empty State">
---

## 🎯 Tính năng nổi bật (Features)

- **CRUD Operations:** Thêm mới (Add), Xóa (Delete) bằng thao tác vuốt trượt, và Cập nhật trạng thái hoàn thành (Toggle Complete) mượt mà với hiệu ứng Animation.
- **Smart Filtering:** Lọc danh sách công việc tức thời theo 3 trạng thái: `All` (Tất cả), `Completed` (Đã hoàn thành), và `Pending` (Chưa hoàn thành).
- **Responsive Dark Mode:** Giao diện tự động tối ưu hóa độ tương phản cực tốt trên cả giao diện Sáng và Tối nhờ sử dụng hệ thống màu Semantic chuẩn của Apple (`.primary`, `.secondary`, `.accentColor`).
- **Modern Empty State:** Tích hợp `ContentUnavailableView` đem lại trải nghiệm UI/UX thân thiện khi danh sách trống.
- **Navigation:** Hệ thống định hướng an toàn và hiện đại với `NavigationStack`.

---

## 📂 Cấu trúc thư mục (Folder Structure)

Dự án áp dụng nguyên tắc **Component hóa**, chia nhỏ UI để dễ dàng bảo trì và tái sử dụng:

```text
TodoApp/
│
├── Models/
│   └── Todo.swift             # Cấu trúc dữ liệu Task & định nghĩa FilterType
│
├── Views/
│   ├── ContentView.swift      # Màn hình chính quản lý State & Logic điều hướng
│   ├── TodoRowView.swift      # Component hiển thị từng dòng Task độc lập
│   └── AddTodoView.swift      # Component thanh nhập liệu và xử lý thêm Task
│
├── Components/
│   └── FilterButton.swift     # Component nút bấm lọc trạng thái Reusable
│
└── TodoApp.swift              # App Entry Point
