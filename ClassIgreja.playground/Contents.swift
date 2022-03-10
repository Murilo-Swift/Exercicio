class Igreja {
    var nome: String
    var pastor: [Membro]?
    var presbitero: [Membro]?
    var obreiro: [Membro]?
    var membro: [Membro]?
    var endereco: Endereco
    init(nome: String, pastor:[Membro]?, presbitero:[Membro]?, obreiro:[Membro]?, membro:[Membro]?, endereco:Endereco) {
        self.membro = membro
        self.obreiro = obreiro
        self.presbitero = presbitero
        self.pastor = pastor
        self.nome = nome
        self.endereco = endereco
    }
}
class Pessoa {
    var nome: String
    var idade: Int
    var CPF: String
    var endereco: Endereco
    init(nome: String, idade: Int,CPF: String,endereco: Endereco) {
        self.nome = nome
        self.idade = idade
        self.CPF = CPF
        self.endereco = endereco
    }
}

class Endereco {
    var rua: String
    var CEP: String
    var complemento: String
    init(rua: String,CEP: String, complemento: String) {
        self.rua = rua
        self.CEP = CEP
        self.complemento = complemento
    }
}

class Membro: Pessoa {
    var carteirinha: String
        init(nome: String, idade: Int, CPF: String, endereco: Endereco,carteirinha: String) {
        self.carteirinha = carteirinha
        super.init(nome: nome, idade: idade, CPF: CPF, endereco: endereco)
    }
}


class Impressora {
    
   private func imprimirDadosMembros (membro : Membro) {
    
        print("NOME:",membro.nome)
        print("IDADE:",membro.idade)
        print("CPF:",membro.CPF)
        print("CARTEIRINHA:",membro.carteirinha)
    
    }

   private func imprimirEnderecoMembro (membro: Membro) {
    
    print("RUA:",membro.endereco.rua)
    print("CEP:",membro.endereco.CEP)
    print("COMPLEMENTO:",membro.endereco.complemento)
    
    }
   private func imprimirEnderecoIgreja (igrejaEndereco: Igreja)  {
    
    print(igrejaEndereco.endereco.rua)
    print(igrejaEndereco.endereco.CEP)
    print(igrejaEndereco.endereco.complemento)
    
    }
    
    func imprimirIgreja (igreja: Igreja) {
        
        print("========IGREJA========")
        print("")
        print("NOME:",igreja.nome)
        print("")
        print("=======ENDEREÇO=======")
        print("")
        imprimirEnderecoIgreja(igrejaEndereco: igreja)
        print("")
        
    }
    func ImprimirSobreMembros (membro: Membro) {
        print("========MEMBRO========")
        print("")
        imprimirDadosMembros(membro: membro)
        print("")
        print("=======ENDEREÇO=======")
        print("")
        imprimirEnderecoMembro(membro: membro)
        print("")
        print("======================")
    }

}


let impressora = Impressora()
var pastorIgreja1 = Membro(nome: "Eloir", idade: 35, CPF: "737373-55", endereco: enderecoPastor1, carteirinha: "9999939")
var enderecoIgreja1 = Endereco(rua: "Rua Google", CEP: "212222-33", complemento: "Subida do Morro")
var enderecoMembro1 = Endereco(rua: "Rua Capitão", CEP: "2424242-30", complemento: "Do lado do Prédio Abandonado")
var enderecoPastor1 = Endereco(rua: "Salgueiro", CEP: "2424242-30", complemento: "Do lado de 01")
var membro1 = Membro(nome: "Murilo", idade: 18, CPF: "2444720-30", endereco: enderecoMembro1, carteirinha: "77676767")
var membro2 = Membro(nome: "Givanildo", idade: 23, CPF: "2444720-30", endereco: enderecoMembro1, carteirinha: "34667433")
var membro3 = Membro(nome: "Tiago", idade: 31, CPF: "2444720-30", endereco: enderecoMembro1, carteirinha: "8989898")
var igreja1 = Igreja(nome: "igreja Ebenezer", pastor: [pastorIgreja1], presbitero: [membro2], obreiro: [membro3], membro: [membro1], endereco: enderecoIgreja1)
impressora.imprimirIgreja(igreja: igreja1)
impressora.ImprimirSobreMembros(membro: membro1)



