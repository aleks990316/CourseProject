# Курсовой проект

### Сборка проекта
> 
    git clone https://github.com/KabStas/CourseProject
    cd CourseProject/courseProject/Sources/courseProject
    swift build 

### Запуск проекта
> 
    
    USAGE: swift run courseProject <action> [<word>] [--key <key>] [--language <language>]
    
    ARGUMENTS:
    <action>                search, update or delete 
    <word>                  chosen word to update 
    
    OPTIONS:
    -k, --key <key>             A word to translate
    -l, --language <language>   A language to choose
    -h, --help                  Show help information
Добавлена библиотека PrettyColors, которая позволяет менять цвет и стиль шрифта консольного вывода. Тем самым, можно удобно разделять язык и перевод с этого языка.
