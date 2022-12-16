import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  connect() {
    let xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
      if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
        let response = JSON.parse(xmlHttp.responseText);

        let spinner = document.getElementById('spinner');
        spinner.classList.add('d-none');

        let account = document.getElementById('conta');
        let picture = account.getElementsByClassName('picture')[0];
        picture.src = response.avatar_url;
        let username = account.getElementsByClassName('username')[0];
        username.innerText = `@${response.login}`;
        username.href = response.html_url;
        let name = account.getElementsByClassName('name')[0];
        name.innerText = response.name;
        let bio = account.getElementsByClassName('bio')[0];
        bio.innerText = response.bio;
        let dateContent = new Date(response.created_at);
        let date = account.getElementsByClassName('date')[0];
        date.innerText = dateContent.toLocaleDateString();
        account.classList.remove('d-none');
        account.classList.add('d-flex');
      }
    };
    let username = 'kevendasilva';
    let theUrl = `https://api.github.com/users/${username}`;
    xmlHttp.open('GET', theUrl, true);
    xmlHttp.send(null);
  }
}
