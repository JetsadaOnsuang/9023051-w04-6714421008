import '../models/coffee.dart';

final List<Coffee> coffeeCollection = [
  Coffee(id: 'c001', name: 'เอสเพรสโซ่', origin: 'อิตาลี', roastLevel: 'เข้ม', flavorNotes: 'เข้มข้น คาราเมล ดาร์กช็อกโกแลต', brewMethod: 'Espresso Machine', rating: 4.8, favoriteDate: DateTime(2024, 1, 12)),
  Coffee(id: 'c002', name: 'ลาเต้', origin: 'อิตาลี', roastLevel: 'กลาง', flavorNotes: 'นุ่มนวล นมสด วานิลลา', brewMethod: 'Espresso + Steamed Milk', rating: 4.6, favoriteDate: DateTime(2024, 2, 8)),
  Coffee(id: 'c003', name: 'คาปูชิโน่', origin: 'อิตาลี', roastLevel: 'กลางเข้ม', flavorNotes: 'หอมถั่ว ครีมมี่ โกโก้', brewMethod: 'Espresso + Milk Foam', rating: 4.7, favoriteDate: DateTime(2024, 3, 15)),
  Coffee(id: 'c004', name: 'อเมริกาโน่', origin: 'สหรัฐอเมริกา', roastLevel: 'กลางเข้ม', flavorNotes: 'สดชื่น ฟรุตตี้ คาราเมล', brewMethod: 'Espresso + Water', rating: 4.5, favoriteDate: DateTime(2024, 4, 21)),
  Coffee(id: 'c005', name: 'ดริปกาแฟดอยช้าง', origin: 'เชียงราย, ไทย', roastLevel: 'อ่อน', flavorNotes: 'ดอกไม้ ผลไม้ ส้ม', brewMethod: 'Pour Over', rating: 4.9, favoriteDate: DateTime(2024, 5, 30)),
];