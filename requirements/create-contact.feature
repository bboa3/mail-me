Feature: Como cliente quero salvar o usuário nos grupos

  Scenario: criar usuário
    Given: Mandei o nome e email do usuário com as tags
    When: O Sistema receber nome e email do usuário com as tags
    Then: Sistema deve salvar nome e email nos grupos das tags
  
  Scenario: Tag não encontrada 
    Given: Mandei o nome e email do usuário com as tags
    When: O Sistema receber nome e email do usuário com as tags
    And: O Sistema Não encontrar o registro uma tag no seu armazenamento de dados
    Then: Sistema deve mandar erro para a equipe de manunteção por email
    And: Sistema deve salvar o usuário nas tags existentes

  Scenario: Erros
    Given: Mandei a tag do grupo de usuário e a mensagem
    When: O Sistema receber tag do grupo de usuário e a mensagem
    And: O Sistema se deparar com qualquer erro
    Then: Sistema deve enviar o erro para a equipe de manunteção por email