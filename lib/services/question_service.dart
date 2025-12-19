import '../models/question.dart';

class QuestionService {
  static List<Question> getQuestionsBySubject(String subject) {
    switch (subject) {
      case 'Flutter':
        return _flutterQuestions;
      case 'SQL':
        return _sqlQuestions;
      case 'Cybersecurity':
        return _cyberQuestions;
      default:
        return [];
    }
  }

  // ================= FLUTTER =================

  static final List<Question> _flutterQuestions = [
    Question(
      questionText: 'Что такое Flutter?',
      options: [
        'Язык программирования',
        'Фреймворк',
        'Операционная система',
        'База данных',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'Какой язык используется во Flutter?',
      options: ['Java', 'Kotlin', 'Dart', 'Swift'],
      correctIndex: 2,
    ),
    Question(
      questionText: 'Что такое widget во Flutter?',
      options: [
        'Экран',
        'Компонент UI',
        'База данных',
        'Сервис',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'Какой виджет отвечает за разметку экрана?',
      options: ['Scaffold', 'Text', 'Icon', 'Image'],
      correctIndex: 0,
    ),
    Question(
      questionText: 'StatelessWidget — это…',
      options: [
        'Виджет без состояния',
        'Виджет с состоянием',
        'Сервис',
        'Модель',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'StatefulWidget используется когда…',
      options: [
        'Нужно хранить состояние',
        'Нет UI',
        'Нет логики',
        'Нет данных',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'Какой метод обновляет UI?',
      options: ['build()', 'initState()', 'setState()', 'dispose()'],
      correctIndex: 2,
    ),
    Question(
      questionText: 'Navigator нужен для…',
      options: [
        'Работы с API',
        'Навигации между экранами',
        'Хранения данных',
        'Анимаций',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'pubspec.yaml используется для…',
      options: [
        'UI',
        'Зависимостей',
        'Навигации',
        'Тем',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'MVVM — это…',
      options: [
        'Архитектурный паттерн',
        'Язык',
        'Фреймворк',
        'База данных',
      ],
      correctIndex: 0,
    ),
  ];

  // ================= SQL =================

  static final List<Question> _sqlQuestions = [
    Question(
      questionText: 'SQL используется для…',
      options: [
        'Создания UI',
        'Работы с базами данных',
        'Анимаций',
        'Навигации',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'Какой оператор выбирает данные?',
      options: ['SELECT', 'UPDATE', 'DELETE', 'INSERT'],
      correctIndex: 0,
    ),
    Question(
      questionText: 'WHERE используется для…',
      options: [
        'Фильтрации',
        'Сортировки',
        'Объединения',
        'Удаления',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'ORDER BY нужен для…',
      options: [
        'Фильтрации',
        'Сортировки',
        'Обновления',
        'Удаления',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'COUNT() — это…',
      options: [
        'Агрегатная функция',
        'Таблица',
        'Тип данных',
        'Индекс',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'JOIN используется для…',
      options: [
        'Соединения таблиц',
        'Удаления данных',
        'Создания таблиц',
        'Фильтрации',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'PRIMARY KEY — это…',
      options: [
        'Уникальный идентификатор',
        'Тип данных',
        'Функция',
        'Запрос',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'INSERT INTO используется для…',
      options: [
        'Добавления данных',
        'Удаления данных',
        'Обновления',
        'Выборки',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'DELETE удаляет…',
      options: [
        'Таблицы',
        'Строки',
        'Колонки',
        'Базы',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'GROUP BY используется с…',
      options: [
        'Агрегатными функциями',
        'JOIN',
        'DELETE',
        'INSERT',
      ],
      correctIndex: 0,
    ),
  ];

  // ================= CYBERSECURITY =================

  static final List<Question> _cyberQuestions = [
    Question(
      questionText: 'Кибербезопасность — это…',
      options: [
        'Защита данных',
        'Создание UI',
        'Программирование',
        'Дизайн',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'Что такое фишинг?',
      options: [
        'Вирус',
        'Кража данных',
        'Шифрование',
        'Брандмауэр',
      ],
      correctIndex: 1,
    ),
    Question(
      questionText: 'Пароль должен быть…',
      options: [
        'Простым',
        'Коротким',
        'Сложным',
        'Одинаковым',
      ],
      correctIndex: 2,
    ),
    Question(
      questionText: 'HTTPS — это…',
      options: [
        'Безопасный протокол',
        'Вирус',
        'База данных',
        'Фреймворк',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'Firewall нужен для…',
      options: [
        'Защиты сети',
        'UI',
        'Хранения данных',
        'Анимаций',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'Malware — это…',
      options: [
        'Вредоносное ПО',
        'Антивирус',
        'База данных',
        'Протокол',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: '2FA — это…',
      options: [
        'Двухфакторная аутентификация',
        'Вирус',
        'Брандмауэр',
        'SQL-запрос',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'VPN используется для…',
      options: [
        'Безопасного соединения',
        'UI',
        'Хранения данных',
        'Дизайна',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'Социальная инженерия — это…',
      options: [
        'Взлом людей',
        'Взлом серверов',
        'Шифрование',
        'Антивирус',
      ],
      correctIndex: 0,
    ),
    Question(
      questionText: 'Антивирус нужен для…',
      options: [
        'Защиты от вирусов',
        'UI',
        'SQL',
        'Навигации',
      ],
      correctIndex: 0,
    ),
  ];
}
