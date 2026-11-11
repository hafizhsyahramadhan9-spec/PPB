class Task {
  String judul;
  String assignee;
  String deadline;
  String status = "To Do";

  Task(this.judul, this.assignee, this.deadline);

  void mulaiKerjakan() {
    status = "In Progress";
  }

  void selesaikan() {
    status = "Done";
  }

  void tampilkanTask() {
    print("Judul    : $judul");
    print("Assignee : $assignee");
    print("Deadline : $deadline");
    print("Status   : $status");
    print("-------------------------");
  }
}

void main() {
  Task task1 = Task(
    "Membuat Desain UI",
    "Andi",
    "15 November 2026",
  );

  Task task2 = Task(
    "Membuat Database",
    "Budi",
    "17 November 2026",
  );

  Task task3 = Task(
    "Membuat Halaman Login",
    "Citra",
    "20 November 2026",
  );

  task1.mulaiKerjakan();
  task2.selesaikan();

  print("===== DAFTAR TASK PROYEK =====");
  task1.tampilkanTask();
  task2.tampilkanTask();
  task3.tampilkanTask();
}
