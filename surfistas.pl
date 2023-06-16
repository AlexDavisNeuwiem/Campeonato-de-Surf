%-- Fatos -------------------------------------------------------------------------------------------------------------

cor(amarela).
cor(azul).
cor(branca).
cor(verde).
cor(vermelha).

nome(flavio).
nome(fernando).
nome(igor).
nome(rogerio).
nome(tomas).

praia(areado).
praia(brava).
praia(itaguare).
praia(itamambuca).
praia(maresias).

tamanho(5.6).
tamanho(5.7).
tamanho(5.8).
tamanho(5.11).
tamanho(6).

gentilico(gaucho).
gentilico(baiano).
gentilico(fluminense).
gentilico(mineiro).
gentilico(paulista).

ranking(1).
ranking(2).
ranking(3).
ranking(5).
ranking(8).

%----------------------------------------------------------------------------------------------------------------------



%-- Predicados --------------------------------------------------------------------------------------------------------

surfista(Cor, Nome, Praia, Tamanho, Gentilico, Ranking).

aEsquerda(X, Y, Lista) :- nth0(IndexX, Lista, X), nth0(IndexY, Lista, Y), IndexX < IndexY.

aDireita(X, Y, Lista) :- aEsquerda(Y, X, Lista).

aoLado(X, Y, Lista) :- nextto(X, Y, Lista); nextto(Y, X, Lista).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H, T)), todosDiferentes(T).

%----------------------------------------------------------------------------------------------------------------------



%-- Solução -----------------------------------------------------------------------------------------------------------

solucao(ListaSolucao) :-
    ListaSolucao = [surfista(Cor1, Nome1, Praia1, Tamanho1, Gentilico1, Ranking1),
                    surfista(Cor2, Nome2, Praia2, Tamanho2, Gentilico2, Ranking2),
                    surfista(Cor3, Nome3, Praia3, Tamanho3, Gentilico3, Ranking3),
                    surfista(Cor4, Nome4, Praia4, Tamanho4, Gentilico4, Ranking4),
                    surfista(Cor5, Nome5, Praia5, Tamanho5, Gentilico5, Ranking5)]

% O surfista que está no Quinto lugar do ranking está na quarta posição.
% O Oitavo do ranking está exatamente à esquerda do Quinto lugar.
% O Primeiro do ranking está em algum lugar à direita do surfista da prancha Amarela.
% O Mineiro está exatamente à direita do surfista que está em Segundo no ranking.
% O dono da prancha Azul está em algum lugar à esquerda do Paulista.
% O Gaúcho está em algum lugar à direita do surfista da prancha Verde.
% O Mineiro está ao lado do Oitavo do ranking.
% O Baiano está exatamente à direita do Mineiro.
% O surfista da prancha de 6'0" está na quinta posição.
% O dono da prancha de 5'8" está em algum lugar entre o Tomas e o dono da prancha de 5'7".
% O surfista da prancha de 5'11" está em algum lugar entre o Segundo do ranking e o surfista da prancha de 5'8".
% O surfista que curte surfar em Maresias está exatamente à direita do surfista da prancha de 5'7".
% O dono da prancha Amarela está ao lado do surfista que gosta de surfar em Areado.
% Quem gosta de surfar em Itamambuca está exatamente à esquerda de quem gosta de surfar em Areado.
% O surfista da prancha Amarela está em algum lugar entre o que curte surfar em Brava e o Quinto do ranking.
% Rogério está ao lado do surfista que nasceu na Bahia.
% Igor está em algum lugar à direita do dono da prancha Verde.
% O surfista da prancha Amarela está em algum lugar à esquerda do Flávio.
% Fernando está em algum lugar entre o dono da prancha Vermelha e o Rogério.
% O Gaúcho está na Quarta posição.
% O dono da prancha Amarela está em algum lugar entre o surfista da prancha Vermelha e o que curte surfar em Itaguaré.

%----------------------------------------------------------------------------------------------------------------------
