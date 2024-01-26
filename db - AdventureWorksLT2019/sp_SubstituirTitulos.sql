USE AdventureWorksLT2019;
GO

CREATE OR ALTER PROCEDURE sp_SubstituirTitulos
    @NomeEsquema NVARCHAR(128),
    @NomeTabela NVARCHAR(128),
    @NomeColuna NVARCHAR(128)
AS
BEGIN
    -- Monta a query dinâmica para atualização
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = 'UPDATE ' + QUOTENAME(@NomeEsquema) + '.' + QUOTENAME(@NomeTabela) + 
               ' SET ' + QUOTENAME(@NomeColuna) + ' = REPLACE(' + QUOTENAME(@NomeColuna) + ', ''Mr.'', ''Mister'') ' +
               ' WHERE ' + QUOTENAME(@NomeColuna) + ' LIKE ''%Mr.%'';' +
               'UPDATE ' + QUOTENAME(@NomeEsquema) + '.' + QUOTENAME(@NomeTabela) + 
               ' SET ' + QUOTENAME(@NomeColuna) + ' = REPLACE(' + QUOTENAME(@NomeColuna) + ', ''Ms.'', ''Miss'') ' +
               ' WHERE ' + QUOTENAME(@NomeColuna) + ' LIKE ''%Ms.%'';';

    -- Executa a query dinâmica
    EXEC sp_executesql @SQL;
END;
GO

