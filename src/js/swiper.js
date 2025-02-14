// core version + navigation, pagination modules:
import Swiper from 'swiper';
import { Pagination, Autoplay, EffectFade } from 'swiper/modules';
// import Swiper and modules styles
import 'swiper/css';
import 'swiper/css/pagination';
import 'swiper/css/effect-fade';

document.addEventListener('DOMContentLoaded', () => {
  const swiper = new Swiper('.swiper', {
    modules: [Pagination, Autoplay, EffectFade],
    effect: 'fade',
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'fraction',
    },
  });
});
