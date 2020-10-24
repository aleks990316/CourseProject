import Foundation
import ArgumentParser

let path = "dict.json" /*Bundle.main.path( forResource: "dict", ofType: "json") ?? "dict.json"*/
var dictionaries: [String: [String: String]] = [:]
let decoder = JSONDecoder()

if let json = FileManager.default.contents(atPath: path) { 
    dictionaries = (try? decoder.decode([String: [String: String]].self, from: json)) ?? [:]
} else {
    dictionaries = [:]
} 

func outputtingResultsWithNoArgs() {

    for (word, translations) in dictionaries {
        print(word)
        for (language, value) in translations {
            print("  \(language): \(value)")
        }
    }
}

func outputtingResultsForKey (key: String) {

    for (word, translations) in dictionaries { 
        if key == word { 
            print(word)
            for (language, value) in translations {
                print("  \(language): \(value)")
            }
            return
        } 
    }
    print("Not found")   
}

func outputtingResultsForLanguage (language: String) {

    var countForMatches = 0

    for (word, translations) in dictionaries { 
        for (languages, value) in translations {
            if language == languages {
                countForMatches += 1    
                print("  \(word) = \(value)")
            }
        }
    }
    if countForMatches == 0 {
        print("Not found")   
    }
}   
  
func outputtingResultsForKeyAndLanguage (key: String, language: String) {

    for (word, translations) in dictionaries { 
        if key == word { 
            for (languages, value) in translations {
                if language == languages {
                    print(value)
                    return
                }
            }
        } 
    }
    print("Not found") 
}     

struct Run: ParsableCommand {
    
    @Option(name: .shortAndLong, help: "A word to translate")
    var key: String?
    
    @Option(name: .shortAndLong, help: "A language to choose")
    var language: String?

    func run() throws {
        
        if let finalKey = key {
            if let finalLanguage = language { 
               outputtingResultsForKeyAndLanguage(key: finalKey, language: finalLanguage) 
            } else {
                outputtingResultsForKey (key: finalKey)
            }
        } else if let finalLanguage = language {
            outputtingResultsForLanguage (language: finalLanguage)
        } else {
            outputtingResultsWithNoArgs() 
        }
    }
}

Run.main()
