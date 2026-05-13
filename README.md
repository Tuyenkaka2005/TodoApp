# 📝 TodoApp — SwiftUI Clean Architecture

Một ứng dụng Quản lý công việc (Todo List) hiện đại được xây dựng hoàn toàn bằng **SwiftUI**, tuân thủ nghiêm ngặt các tiêu chuẩn Clean Code, áp dụng triệt để việc phân tách Component và tối ưu hóa luồng dữ liệu (State Management).

---

## 📸 Screenshots

| Light Mode (All Tasks) | Dark Mode (Filtered) | Empty State |
| :---: | :---: | :---: |
| ![Light Mode](./Screenshots/light_mode.png) | ![Dark Mode](./Screenshots/dark_mode.png) | ![Empty State](./Screenshots/empty_state.png) |

*(💡 **Lưu ý cho Team submit:** Hãy thay thế đường dẫn ảnh trên bằng link ảnh Screenshot thực tế của bạn sau khi upload lên repo)*

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
