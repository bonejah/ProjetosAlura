import { log }  from './utils/promise-helpers.js';
import './utils/array-helpers.js';
import { notasService as service } from './nota/service.js';

// document
//   .querySelector('#myButton')
//   .onclick = () => 
//     fetch('http://localhost:3000/notas')
//       .then(handleStatus)
//       .then(notas => notas.reduce((array, nota) => array.concat(nota.itens), [])) Functor
//       .then(notas => notas.$flatMap(nota=> nota.itens))
//       .then(log)
//       .then(itens => itens.filter(item => item.codigo == '2143'))
//       .then(log)
//       .then(itens => itens.reduce((total, item) => total + item.valor, 0))
//       .then(console.log)
//       .catch(console.log)


document
  .querySelector('#myButton')
  .onclick = () => 
      service
       .sumItems('2143')
      .then(console.log)
      .catch(console.log);

