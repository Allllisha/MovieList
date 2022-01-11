import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Classical", "Sci-fi", "Romance", "horror", "human drama"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };