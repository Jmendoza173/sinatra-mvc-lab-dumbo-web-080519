class PigLatinizer

    def piglatinize(user_input)
        newT = []
        user_input.split.each {|word| 
        if word[0].match?(/[aAeEiIoOuU]/)
            newT << "#{word}way"
        else 
            old = StringScanner.new(word)
            old.scan_until(/[aAeEiIoOuU]/)
            newT << "#{old.matched}#{old.post_match}#{old.pre_match}ay"
        end
        }

        newT.join(" ")
    end


end