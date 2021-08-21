@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;700&display=swap');
:root {
    /* Fonts  */
    --fsg: 150px;
    --fsm: 85px;
    --fss: 30px;
    --fses: 18px;

    /* Light theme  */
    --accent: #186efdaa;
    --bg: #f5f5f5;
    --sbg: #e4e6e6;
    --fg: #3a3a3a;

    /* Image background  */

    /* Uncoment this section to get the 
    image wallpaper. You can also 
    change the --imgcol value 
    to make the filter to your own */

    /* --imgbg: url(/img/wal.jpg); */
    --imgcol: linear-gradient(
        rgba(255, 255, 255, 0.7),
        rgba(255, 255, 255, 0.7)
    );
}
@media only screen and (max-width: 68.75em) {
    :root {
        --fsg: 100px;
        --fsm: 65px;
        --fss: 20px;
    }
}

/* Dark theme  */
.darktheme {
    --accent: #186efd60;
    --bg: #1e1f21;
    --sbg: #2c2d31;
    --fg: #d8dee9;
    --imgcol: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7));
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
    font-size: 13.5px;
    transition: 0.2s ease-in-out;
}

body {
    width: 100vw;
/*     height: 100vh; */
    background-color: var(--bg);
    background-image: var(--imgcol), var(--imgbg);
    display: flex;
    align-items: center;
    justify-content: center;
}

#themeButton {
    position: absolute;
    margin: 2em 2em 0 0;
    right: 0;
    top: 0;
    color: var(--fg);
    border: none;
    border-radius: 5px;
    padding: 10px;
    cursor: pointer;
    background-color: #00000000;
    -webkit-appearance: none;
    -moz-appearance: none;
}

.bicon {
    width: 26px;
    height: 26px;
}

.container {
    width: 150vh;
/*     height: 85vh; */
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-template-rows: repeat(2, 20em) auto auto auto;
    grid-gap: 30px;
    padding: 20px;
}
/*@media only screen and (max-width: 68.75em) {
    .container {
        grid-gap: 20px;
        padding: 40px;
    }
}*/
.container > * {
    width: 100%;
}

.card {
    box-shadow: 0 5px 7px rgba(0, 0, 0, 0.35);
    border-radius: 5px;
    background-color: var(--sbg);
}
.card:hover {
    transform: translateY(-0.2rem);
    box-shadow: 0 10px 10px rgba(0, 0, 0, 0.35);
}

.fblock {
    grid-row: 1 / span 1;
    grid-column: 1 / span 2;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

.todo {
    grid-row: 2 / span 1;
    grid-column: 3 / span 2;
    display: flex;
    flex-direction: column;
    /*align-items: center;*/
    /*justify-content: center;*/
    color: var(--fg);
    overflow: scroll;
}

.todo > ul li {
    margin-left: 10px;
 }

/*
@media only screen and (max-width: 68.75em) {
    .fblock {
        grid-row: 1 / span 2;
    }
}*/

.sblock {
    grid-column: 3 / span 2;
    grid-row: 1 / span 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}
.sblock__date {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 30px;
}
.sblock__weather {
    display: flex;
    align-items: center;
    justify-content: center;
}
/*@media only screen and (max-width: 68.75em) {
    .sblock {
        display: none;
    }
}*/

.clock {
    display: flex;
    align-items: center;
    justify-content: center;
}

#hour,
#separator,
#minutes {
    font-size: var(--fsg);
    font-weight: bolder;
    color: var(--fg);
}

#month,
#day {
    font-size: var(--fsm);
    font-weight: bold;
    color: var(--fg);
}

#day {
    margin-left: 20px;
}

#greetings {
    font-size: var(--fss);
    color: var(--fg);
}
@media only screen and (max-width: 68.75em) {
    #greetings {
        font-size: var(--fss);
    }
}

.weather-icon img {
    width: 80px;
    height: 80px;
}

.temperature-value p {
    font-size: var(--fss);
    font-weight: bolder;
    margin-left: 15px;
    color: var(--fg);
}

.temperature-description p {
    font-size: var(--fss);
    margin-left: 15px;
    color: var(--fg);
}

.qlink1 {
    grid-row: 2 / span 1;
    grid-column: 1 / span 2;
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: repeat(2, 1fr);
    grid-gap: 30px;
    padding: 30px;
}


/*@media only screen and (max-width: 68.75em) {
    .qlink1 {
        grid-row: 3 / span 2;
        grid-gap: 40px;
        padding: 20px;
    }
}*/
.qlink__icon {
    width: 26px;
    height: 26px;
    color: var(--fg);
}
.qlink__link {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: var(--sbg);
    width: 100%;
    box-shadow: 0 5px 7px rgba(0, 0, 0, 0.35);
    border-radius: 5px;
}
.qlink__link-1 {
    grid-row: 1;
    grid-column: 1;
}
.qlink__link-2 {
    grid-row: 1;
    grid-column: 2;
}
.qlink__link-3 {
    grid-row: 2;
    grid-column: 1;
}
.qlink__link-4 {
    grid-row: 2;
    grid-column: 2;
}
.qlink__link-5 {
    grid-row: 1;
    grid-column: 3;
}
.qlink__link-6 {
    grid-row: 2;
    grid-column: 3;
}
.qlink__link:hover {
    background-color: var(--accent);
    transform: translateY(-0.2rem);
    box-shadow: 0 10px 10px rgba(0, 0, 0, 0.35);
}
.qlink__link:hover svg {
    stroke: var(--fg);
}

.qlist {
    display: flex;
    align-items: center;
    flex-direction: column;
}
/*@media only screen and (max-width: 68.75em) {
    .qlist {
        display: none;
    }
}*/
.qlist__1 {
    grid-column: 3 / span 2;
    grid-row: 3 / span 2;
}
.qlist__2 {
    grid-column: 1 / span 4;
    grid-row: 3;
}

.qlist__3 {
    grid-column: 1 / span 4;
    grid-row: 4;
}

.qlist__4 {
    grid-column: 1 / span 4;
    grid-row: 5;
}

.qlist__head {
    margin-top: 30px;
    margin-bottom: 20px;
    width: 30px;
    color: var(--fg);
    height: 30px;
}
.qlist__link {
    text-decoration: none;
    font-size: var(--fses);
    color: var(--fg);
    margin-top: 1px;
    padding: 6px 12px;
    border-radius: 5px;
    font-weight: bold;
}
.qlist__link:hover {
    background-color: var(--accent);
    color: var(--fg);
}

html body div#fw-container {
    border: none !important;
}
