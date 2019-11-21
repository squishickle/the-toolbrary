import "bootstrap";
import 'flatpickr/dist/flatpickr.css';

import { toggleDateInputs } from '../components/rental';
import { changePrice } from '../components/price';
import { hideTypedText } from '../components/search';

toggleDateInputs();
changePrice();
hideTypedText();
