def cipher(your_string, shift_factor)
 number_string = your_string.split('').map { |n| n.ord }
 shift_string = number_string.map do |n|
    number = n + shift_factor
        if n.between?(65, 90) 
            if shift_factor.positive?
                number > 90 ? number - 26 : number
            else
                number < 65 ? number + 26 : number
            end
        elsif n.between?(97, 122)
            if shift_factor.positive?
                number > 122 ? number - 26 : number
            else
                number < 97 ? number + 26 : number
            end
        else 
            n    
    end
end
 final_string = shift_string.map! { |b| b.chr }.join('')
 puts final_string
end

cipher("Hello how are you?", -3)