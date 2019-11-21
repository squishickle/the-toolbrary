import "bootstrap";
import 'flatpickr/dist/flatpickr.css';

import { toggleDateInputs } from '../components/rental';
import { changePrice } from '../components/price';

toggleDateInputs();
changePrice();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
