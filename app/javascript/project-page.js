var content = document.getElementsByClassName('trix-content')[0];
var titles = content.getElementsByTagName('h1');
var topics = document.getElementsByClassName('topics')[0];
var links = topics.getElementsByClassName('links')[0];
var spinner = document.getElementById('spinner');

function slugfy(text, separator = '-') {
  return text
    .toString()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9 ]/g, '')
    .replace(/\s+/g, separator);
}

links.innerHTML = '';

for (let index = 0; index < titles.length; index++) {
  let text = titles[index].innerText;
  let slug = slugfy(text);
  titles[index].id = slug;

  let link = document.createElement('a');
  link.text = text;
  link.href = `#${slug}`;

  let listItem = document.createElement('li');
  listItem.classList.add('subtitle-2');
  listItem.append(link);

  links.append(listItem);
}

spinner.classList.remove('d-flex');
spinner.classList.add('d-none');
links.classList.add('d-grid');
links.classList.remove('d-none');
