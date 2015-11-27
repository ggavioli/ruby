class Utilisateurs
    attr_accessor :nom, :amis
 def est_amis_avec?(prenom)
     puts "On va tester si amis avec " + nom
      amis.each do |ami|
          puts "on teste sur " + ami.nom
          return true if ami.nom == nom
        end
     return false
 end
end


alice = Utilisateurs.new
alice.nom = "Alice"

bob = Utilisateurs.new
bob.nom = "Bob"


jane = Utilisateurs.new
jane.nom = "Jane"

alice.amis = [bob, jane]
puts alice.amis.size
puts alice.est_amis_avec?("Jane")