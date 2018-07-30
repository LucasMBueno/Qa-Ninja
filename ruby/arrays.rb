#----------------
# inicializando um array
# -------------------

@arr = Array.new


#-----------------------------
# Verificar o tipo da variavel
#-----------------------------
puts @arr.class



# -------------------------
# Inserindo dados
# ------------------------

@arr.push('Teste')
@arr.push('Teste1')
@arr.push('Teste 2')


# ---------------------------
#  Exibir dados (todos)
#- -------------------------

puts @arr


# -------------------------
#  Exibir dados (unico)
# -------------------------

puts @arr[1]


# ---------------------
# Procura valor no array
# -----------------------
def imprime_teste
    @arr.each do |a|
        puts a if a =='Teste 2'
        # pode ser assim tbm 'puts a if (a =='Teste 2')'
    end
end

imprime_teste