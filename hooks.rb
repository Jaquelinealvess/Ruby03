Before do
    puts 'Estou sendo executado antes de cada cenario'
    @soma = 5+5
    end

After do
puts 'Estou sendo executado depois de cada cenario'
        
end

Before '@comeco' do
    puts 'rodei apenas o cenario com tag começo'
end