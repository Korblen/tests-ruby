def translate(a)
    v = a.split(" ")
    variable = v.length - 1
    banni_a_la_fin = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    liste_fin = []
    for i in 0 .. variable
        n = v[i]
        index = 0
        consonnes = ""
        while index < n.length && banni_a_la_fin.include?(n[index]) || n[index] == "u" && banni_a_la_fin.include?(n[index - 1])
            consonnes += n[index]
            index += 1
        end   
        reste_du_mot = n[index..-1]
        brougle = reste_du_mot + consonnes +"ay"
        liste_fin << brougle
    end
    fintoutcourt = liste_fin.join(" ") 
    return fintoutcourt
end

