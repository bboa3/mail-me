Feature: Como cliente quero enviar um email para um grupo de usuário

  Scenario: Emviar email
    Given: Mandei a tag do grupo de usuário e a mensagem
    When: O Sistema receber tag do grupo de usuário e a mensagem
    Then: Sistema deve enviar o email para todos os usuário pertecentes a tag
  
  Scenario: Grupo da Tag não encontrada
    Given: Mandei a tag do grupo de usuário e a mensagem
    When: O Sistema receber tag do grupo de usuário e a mensagem
    And: O Sistema Não encontrar o registro do grupo no seu armazenamento de dados
    Then: Sistema deve esperar 5 minutos tentando se atualizar
    And: Sistema deve enviar o email para todos os usuário pertecentes a tag

  Scenario: Erros
    Given: Mandei a tag do grupo de usuário e a mensagem
    When: O Sistema receber tag do grupo de usuário e a mensagem
    And: O Sistema se deparar com qualquer erro
    Then: Sistema deve enviar o erro para a equipe de manunteção por email
