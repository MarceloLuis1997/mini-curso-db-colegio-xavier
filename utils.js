/**
 * Gera um número inteiro aleatório no intervalo passado por parâmetro
 */
function generateRandomInt(min = 10000, max = 1000000) {
    return Math.floor(Math.random() * (max - min + 1)) + min
}

/**
 * Gera o script de inserção de dados no banco de dados através do nome do álbum e de um array de músicas
 */
function songListToInsert(album, songList) {
    const albumSql = `INSERT INTO albuns (id_artista, titulo, valor, ano_lancamento) VALUES ((SELECT id FROM artistas where nome = '${album.artist}' LIMIT 1), '${album.title}', '${album.value}', '${album.year}');`

    const albumSubselect = `(SELECT id FROM albuns WHERE titulo = '${album.title}' limit 1)`
    let sql = 'INSERT INTO musicas (id_album, numero, titulo, duracao_segundos, quantidade_reproducoes) VALUES '    

    songList.forEach((s, i) => {
        sql += `(${albumSubselect}, ${i+1}, '${s}', ${generateRandomInt(120, 300)}, ${generateRandomInt(10000, 1000000)}) ${i === songList.length - 1 ? ';' : ','}`
    })

    return {
        albumSql,
        sql
    };
}

/**
 * Ex.
 */

let album = {
    artist: 'Metallica',
    title: 'Master of Puppets',
    value: 15.00,
    year: 1986
};

let songList = [
    'Battery', 
    'Master of Puppets', 
    'The Thing That Should Not Be', 
    'Welcome Home (Sanitarium)', 
    'Disposable Heroes', 
    'Leper Messiah', 
    'Orion', 
    'Damage, Inc'
];

console.log(songListToInsert(album, songList));
