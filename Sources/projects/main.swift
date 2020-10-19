import Foundation

    let cat = ["esp": "Gato",
               "rus": "Кот",
                "fr": "Le chat"]

    let dog = ["esp": "Perro",
               "rus": "Собака",
                "fr": "La chienne"]

    let mouse = ["esp": "Ratón",
                 "rus": "Мышь",
                  "fr": "La souris"] 

var dictionaries: [String: [String: String]] = ["cat": cat, "dog": dog, "mouse": mouse] 

func outputtingResultsWithNoKey() {

    for (word, translations) in dictionaries {
        print(word)
        for (language, value) in translations {
            print("  \(language): \(value)")
        }
    }
}

func outputtingResultsForKeyK (comLineArgument2: String) {

    for (word, translations) in dictionaries { 
        if comLineArgument2 == word { 
            print(word)
            for (language, value) in translations {
                print("  \(language): \(value)")
            }
            return
        } 
    }
    print("Not found")   
}

func outputtingResultsForKeyL (comLineArgument2: String) {

    var countForMatches = 0

    for (word, translations) in dictionaries { 
        for (language, value) in translations {
            if comLineArgument2 == language {
                countForMatches += 1    
                print("  \(word) = \(value)")
            }
        }
    }
    if countForMatches == 0 {
        print("Not found")   
    }
}   
    
func outputtingResultsForBothKeys (comLineArgument2: String, comLineArgument4: String) {

    for (word, translations) in dictionaries { 
        if comLineArgument2 == word { 
            for (language, value) in translations {
                if comLineArgument4 == language {
                    print(value)
                    return
                }
            }
        } 
    }
    print("Not found") 
}     
    
if CommandLine.arguments.count == 1 {

    outputtingResultsWithNoKey()

} else if CommandLine.arguments.count == 3 {

    if CommandLine.arguments[1] == "-k" && CommandLine.arguments.count == 3 { 

        let comLineArgument2 = CommandLine.arguments[2]
        outputtingResultsForKeyK (comLineArgument2: comLineArgument2)

    } else if CommandLine.arguments[1] == "-l" { // -l <language>

        let comLineArgument2 = CommandLine.arguments[2]
        outputtingResultsForKeyL (comLineArgument2: comLineArgument2)
    } 
}else if CommandLine.arguments.count == 5 {

    let comLineArgument2 = CommandLine.arguments[2]
    let comLineArgument4 = CommandLine.arguments[4]
    outputtingResultsForBothKeys (comLineArgument2: comLineArgument2, comLineArgument4: comLineArgument4)
}

