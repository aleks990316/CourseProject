import Foundation

struct Dictionaries {

	let cat = ["esp": "Gato",
               "rus": "Кот",
                "fr": "Le chat"]

    let dog = ["esp": "Perro",
               "rus": "Собака",
                "fr": "La chienne"]

    let mouse = ["esp": "Ratón",
                 "rus": "Мышь",
                  "fr": "La souris"] 

    var arrayOfDictionaries: <<String,String>> = [] 

    arrayOfDictionaries.append(dictionaries.cat, dictionaries.dog, dictionaries.mouse)
    print(arrayOfDictionaries)      
}


func outputtingResultsWithNoKey() {

    let word = Dictionaries()

    print("cat")
    for (language, translation) in word.cat {

        print("  \(language):", translation)
    }

    print("dog")
    for (language, translation) in word.dog {

        print("  \(language):", translation)
    }

    print("mouse")
    for (language, translation) in word.mouse {

        print("  \(language):", translation)
    }
}


func outputtingResultsForKeyK (comLineArgument2: String) {

    let word = Dictionaries()

    switch comLineArgument2 {

        case "cat": 
            for (language, translation) in word.cat { 
                print("  \(language):", translation)
            }
        case "dog": 
            for (language, translation) in word.dog { 
                print("  \(language):", translation)
            }
        case "mouse": 
            for (language, translation) in word.mouse { 
                print("  \(language):", translation)
            } 
        default: 
            print("Not found")   
    }        
}


func outputtingResultsForKeyL (comLineArgument2: String) {

    let word = Dictionaries()

    switch comLineArgument2 {
        case "esp": 
            for (language, translation) in word.cat { 
                if language == "esp" {
                    print("  cat -", translation)
                }
            }
            for (language, translation) in word.dog { 
                if language == "esp" {
                    print("  dog -", translation)
                }
            }
            for (language, translation) in word.mouse { 
                if language == "esp" {
                    print("  mouse -", translation)
                }
            }
        case "rus": 
            for (language, translation) in word.cat { 
                if language == "rus" {
                    print("  cat -", translation)
                }
            }
            for (language, translation) in word.dog { 
                if language == "rus" {
                    print("  dog -", translation)
                }
            }
            for (language, translation) in word.mouse { 
                if language == "rus" {
                    print("  mouse -", translation)
                }
            }
        case "fr": 
            for (language, translation) in word.cat { 
                if language == "fr" {
                    print("  cat -", translation)
                }
            }
            for (language, translation) in word.dog { 
                if language == "fr" {
                    print("  dog -", translation)
                }
            }
            for (language, translation) in word.mouse { 
                if language == "fr" {
                    print("  mouse -", translation)
                }
            }
        default: 
            print("Not found") 
    } 
} 


func outputtingResultsForBothKeys (comLineArgument2: String, comLineArgument4: String) {

    let word = Dictionaries()

    switch comLineArgument2 {
        case "cat":
            switch comLineArgument4 {
                case "esp":
                    for (language, translation) in word.cat { 
                        if language == "esp" {
                            print(translation)
                        }
                    }
                case "rus":
                    for (language, translation) in word.cat { 
                        if language == "rus" {
                            print(translation)
                        }
                    }
                case "fr":
                    for (language, translation) in word.cat { 
                        if language == "fr" {
                            print(translation)
                        }
                    }
                default: 
                    print("Not found")   
            } 
        case "dog":
            switch comLineArgument4 {
                case "esp":
                    for (language, translation) in word.dog { 
                        if language == "esp" {
                            print(translation)
                        }
                    }
                case "rus":
                    for (language, translation) in word.dog { 
                        if language == "rus" {
                            print(translation)
                        }
                    }
                case "fr":
                    for (language, translation) in word.dog { 
                        if language == "fr" {
                            print(translation)
                        }
                    }
                default: 
                    print("Not found")   
            }
        case "mouse":
            switch comLineArgument4 {
                case "esp":
                    for (language, translation) in word.mouse { 
                        if language == "esp" {
                            print(translation)
                        }
                    }
                case "rus":
                    for (language, translation) in word.mouse { 
                        if language == "rus" {
                            print(translation)
                        }
                    }
                case "fr":
                    for (language, translation) in word.mouse { 
                        if language == "fr" {
                            print(translation)
                        }
                    }
                default: 
                    print("Not found")   
            }
        default: 
            print("Not found")           
    } 
}


if CommandLine.arguments.count == 1 {

    outputtingResultsWithNoKey()
    
} else if CommandLine.arguments.count == 3 {

    if CommandLine.arguments[1] == "-k" && CommandLine.arguments.count == 3 { // -k <word>

        let comLineArgument2 = CommandLine.arguments[2]
    
        outputtingResultsForKeyK (comLineArgument2: comLineArgument2)
    }
    else if CommandLine.arguments[1] == "-l" { // -l <language>

        let comLineArgument2 = CommandLine.arguments[2]

        outputtingResultsForKeyL (comLineArgument2: comLineArgument2)
    }  
} else if CommandLine.arguments.count == 5 {

    let comLineArgument2 = CommandLine.arguments[2]
    let comLineArgument4 = CommandLine.arguments[4]

    outputtingResultsForBothKeys (comLineArgument2: comLineArgument2, comLineArgument4: comLineArgument4)
}