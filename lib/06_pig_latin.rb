def translate(a)
    v = a.split(" ")
    ghtu = a[0]
    capitale_ou_pas = 0
    variable = v.length - 1
    banni_a_la_fin = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    liste_fin = []
    for i in 0 .. variable
        n = v[i]
        if n[0] =~ /[A-Z]/
            capitale_ou_pas = true
            n = n.sub(/^./) { |match| match.downcase }  
        end
        index = 0
        consonnes = ""
        while index < n.length && banni_a_la_fin.include?(n[index]) || n[index] == "u" && banni_a_la_fin.include?(n[index - 1]) && index < n.length
            consonnes += n[index]
            index += 1
        end   
        reste_du_mot = n[index..-1]
        brougle = reste_du_mot + consonnes +"ay"
        liste_fin << brougle
    end
    if capitale_ou_pas == true
        liste_fin[0][0]= liste_fin[0][0].sub(/^\w/) { |match| match.upcase }
    end
    fintoutcourt = liste_fin.join(" ") 
    return fintoutcourt
end

puts translate("Je appelle malo et je ecris pas bien")