-- 1: Listar todos os artistas por ordem de maior popularidade
select *
  from artistas
 order by popularidade desc;

-- 2: Listar todos os artistas por ordem de menor quantidade de seguidores
select *
  from artistas
 order by quantidade_seguidores asc;

-- 3: Listar todos os festivais que os artistas do gênero Rock e Pop participaram (nome do artista e do festival)
select f.nome nome_festival, a.nome nome_artista
  from festivais f
 inner join festivais_artistas fa
    on f.id = fa.id_festival
 inner join artistas a
    on a.id = fa.id_artista
 where a.genero in ('Rock', 'Pop');

-- 4: Listar todos os artistas que nunca participaram de um festival
-- Método 1
select *
  from artistas
 where id not in (select distinct(id_artista) from festivais_artistas);

-- Método 2
select *
  from artistas
 where not exists (select id from festivais_artistas where id_artista = artistas.id);

-- Método 3
select a.*
  from artistas a
 left join festivais_artistas fa 
   on a.id = fa.id_artista
 where fa.id_artista is null;

-- 5: Listar a quantidade total de reproduções de músicas agrupadas por gênero
select sum(quantidade_reproducoes) as quantidade, ar.genero
  from musicas m 
 inner join albuns a
    on m.id_album = a.id
 inner join artistas ar 
    on a.id_artista = ar.id
 group by ar.genero
 order by quantidade desc;

-- 6: Somar a quantidade de reproduções de todas as músicas agrupadas por álbum, em ordem decrescente
select sum(quantidade_reproducoes) quantidade, a.titulo
  from musicas m
 inner join albuns a 
    on a.id = m.id_album
 group by a.id
 order by quantidade desc;

-- 7: Adicionar um novo campo chamado "url_imagem_capa" na tabela "albuns"
alter table albuns
  add url_imagem_capa varchar(255);

-- 8: Fazer um update na coluna "url_imagem_capa" para que o valor desta coluna seja: "https://images.google.com/albuns/" + nome_do_álbum + ".png"
update albuns
   set url_imagem_capa = concat('https://images.google.com/albuns/', replace(titulo, ' ', '_'), '.png');

-- 9: Atualizar a quantidade de reproduções de todas as músicas em 50.000
update musicas
   set quantidade_reproducoes = quantidade_reproducoes + 50000;

-- 10: Aumentar em 10% o valor de todos os álbuns
update albuns
    set valor = valor + (valor * 0.10);

-- 11: Excluir todas as músicas com a duração em segundos menor que 130 segundos
delete from musicas
 where duracao_segundos < 130;