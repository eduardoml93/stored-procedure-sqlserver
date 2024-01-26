USE AdventureWorks2019; -- Substitua pelo nome do seu banco de dados
GO

CREATE OR ALTER PROCEDURE sp_AtualizarEmail
    @NomeEsquema NVARCHAR(128),
    @NomeTabela NVARCHAR(128),
    @ColunaEmailOriginal NVARCHAR(128),
    @ColunaEmailNovo NVARCHAR(128)
AS
BEGIN
    -- Monta a query dinâmica para atualização
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = 'UPDATE ' + QUOTENAME(@NomeEsquema) + '.' + QUOTENAME(@NomeTabela) + 
               ' SET ' + QUOTENAME(@ColunaEmailNovo) + ' = REPLACE(' + QUOTENAME(@ColunaEmailOriginal) + ', ''@adventure-works.com'', ''@teste.com'') ' +
               ' WHERE ' + QUOTENAME(@ColunaEmailOriginal) + ' LIKE ''%@adventure-works.com''';

    -- Executa a query dinâmica
    EXEC sp_executesql @SQL;
END;
GO
