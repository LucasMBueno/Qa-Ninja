Dado("que eu tenho uma conta com {int} reais") do |saldo_inicial|
  @conta = Conta.new
  @conta.saldo = saldo_inicial
end

Quando("faço um saque no valor de {int} reais") do |valor_saque|
  @conta.saque(valor_saque)
  puts valor_saque
end

Então("{int} reais será o meu saldo final") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
  expect(@conta.mensagem_saida).to eql mensagem
end


class Conta
    attr_accessor :saldo, :mensagem_saida, :valor_limite

    def saque (valor)
        if valor > 700
            @mensagem_saida = 'Valor máximo por transação dedeve ser de R$ 700'
            elsif  @saldo >valor
                @saldo -= valor
                @mensagem_saida = 'Saque com sucesso. Muito obrigado!'
            else
                @mensagem_saida = 'Saldo insuficiente para saque.'
        end
    end
end