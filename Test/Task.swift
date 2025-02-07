import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date = .now
    var details: Optional<String>
    
    init(title: String, isCompleted: Bool, dueDate: Date, details: Optional<String> = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    
    
    mutating func toggleCompletion() {
        self.isCompleted.toggle()
    }
}

struct TaskGroup: Identifiable, Hashable {
    
    let id = UUID()
    let name: String
    let creationDate: Date
    var tasks: Array<Task>
    
    
    init(name: String, tasks: Array<Task> = []) {
        self.name = name
        self.creationDate = Date()
        self.tasks = tasks
    }
}

enum TaskSelection: Identifiable, CaseIterable, Hashable {
    static func == (leftSide: TaskSelection, rightSide: TaskSelection) -> Bool {
        return leftSide.id == rightSide.id
    }
    
    var id: String {
        switch self {
        case .all:
            return "all"
        case .done:
            return "done"
        case .upcoming:
            return "upcoming"
        case .list(let taskGrouping):
            return taskGrouping.id.uuidString
        }
        
    }
    case all
    case done
    case upcoming
    case list(TaskGroup)
    
    var displayName: String {
        switch self {
        case .all:
            return "All"
        case .done:
            return "Completed"
        case .upcoming:
            return "Upcoming"
        case .list(let taskGrouping):
            return taskGrouping.name
            
        }
    }
    
    var iconName: String {
        switch self {
        case .all:
            return "star"
        case .done:
            return "checkmark.circle"
        case .upcoming:
            return "calendar"
        case .list(let taskGrouping):
            return "folder"
            
        }
    }
    
    static var allCases: Array<TaskSelection> {
        [.all, .done, .upcoming]
    }
    
}
