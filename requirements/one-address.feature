Feature: Como cliente quero enviar um email para um usuário

  Scenario: Emviar email
    Given: Mandei nome e mail usuário e a mensagem
    When: O Sistema receber nome e mail usuário e a mensagem
    Then: Sistema deve enviar o email para o usuário

  Scenario: Erros
    Given: Mandei a nome e mail usuário e a mensagem
    When: O Sistema receber nome e mail usuário e a mensagem
    And: O Sistema se deparar com qualquer erro
    Then: Sistema deve enviar o erro para a equipe de manunteção por email