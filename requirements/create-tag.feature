Feature: Como cliente quero criar grupo

  Scenario: criar grupo
    Given: Mandei a tag do grupo e descrição
    When: O Sistema receber tag do grupo e descrição
    Then: Sistema deve salvar a tag do grupo e descrição
  
  Scenario: Tag do grupo já existe não
    Given: Mandei a tag do grupo e descrição
    When: O Sistema receber tag do grupo e descrição
    And: O Sistema encontrar registro do grupo seu armazenamento de dados
    Then: Sistema deve atualizar a descrição do grupo

  Scenario: Erros
    Given: Mandei a tag do grupo e descrição
    When: O Sistema receber tag do grupo e descrição
    And: O Sistema se deparar com qualquer erro
    Then: Sistema deve enviar o erro para a equipe de manunteção por email
