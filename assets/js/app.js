// We import the CSS which is extracted to its own file by esbuild.
// Remove this line if you add a your own CSS build pipeline (e.g postcss).

// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import { Socket } from "phoenix"
import { LiveSocket } from "phoenix_live_view"
import topbar from "../vendor/topbar"
import init_templet from "./template"


import Alpine from "alpinejs"
import persist from '@alpinejs/persist'
import TimeAgo from "./timeago.js"
import { es } from 'date-fns/locale';


window.Alpine = Alpine
Alpine.plugin(persist);
Alpine.plugin(TimeAgo.configure({
    locale: es,
}));
Alpine.start();
console.log("Alpine");



console.log("Out Hooks", window.outHooks);

let Hooks = (window.outHooks) ? window.outHooks : {};

Hooks.PhoneNumber = {
    mounted() {
        this.el.addEventListener("input", e => {
            this.el.value = this.el.value.replace(/[^\d]+/g, '');
            let match = this.el.value.replace(/\D/g, "").match(/^(\d{3})(\d{3})(\d{4})$/)
            if (match) {
                this.el.value = `${match[1]}-${match[2]}-${match[3]}`
            }
        })
    }
}
Hooks.ScrollBottom = {
    mounted() {
        console.log(this.el.id);
        const element = document.getElementById(this.el.id);
        element.scrollTop = element.scrollHeight;
    },
    updated() {
        console.log(this.el.id);
        const element = document.getElementById(this.el.id);
        element.scrollTop = element.scrollHeight;
    }
}

/*

<div id="infinite-scroll" phx-hook="InfiniteScroll" data-page={@page}>

*/
Hooks.InfiniteScroll = {
    page() { return this.el.dataset.page },
    mounted() {
        this.pending = this.page()
        window.addEventListener("scroll", e => {
            if (this.pending == this.page() && scrollAt() > 90) {
                this.pending = this.page() + 1
                this.pushEvent("load-more", {})
            }
        })
    },
    updated() { this.pending = this.page() }
}


import { Html5QrcodeScanner } from 'html5-qrcode';


Hooks.ScanQr = {
    mounted() {
        //console.log(this.el.id);
        //console.log(this.el.dataset);
        //this.pushEvent("readqr", { hi: "hi !" }, (reply, ref) => console.log(reply));
        const _this = this;

        function onScanSuccess(decodedText, decodedResult) {
            //console.log(`Code scanned = ${decodedText}`, decodedResult);
            _this.pushEvent("readqr", { decodedText: decodedText, decodedResult: decodedResult }, (reply, ref) => console.log(reply));
        }
        //console.log({ fps: parseInt(this.el.dataset.fps || 10), qrbox: parseInt(this.el.dataset.width || 400), showTorchButtonIfSupported: true, showZoomSliderIfSupported: true, defaultZoomValueIfSupported: true });
        var html5QrcodeScanner = new Html5QrcodeScanner(
            this.el.id, { fps: 20, qrbox: parseInt(this.el.dataset.width || 400), showTorchButtonIfSupported: true, showZoomSliderIfSupported: true, defaultZoomValueIfSupported: true });
        html5QrcodeScanner.render(onScanSuccess);
    },
    updated() {
        console.log(this.el.id);
    }
}


let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {
    params: { _csrf_token: csrfToken },
    hooks: Hooks,
    dom: {
        onBeforeElUpdated(from, to) {
            if (from._x_dataStack) {
                window.Alpine.clone(from, to)
            }
        }
    }
})

// Show progress bar on live navigation and form submits
topbar.config({ barColors: { 0: "#29d" }, shadowColor: "rgba(0, 0, 0, .3)" })

window.pageState = {
    start: false,
    start_one: false,
    stop: false,
    stop_one: false
};



function change_ps_class(name, value) {
    let e = window.document.getElementsByClassName(name);
    //console.log("change_ps_class", name, value, e);
    for (let i = 0; i < e.length; i++) {
        const el = e[i];
        //console.log("change_ps_class", name, value, el);
        //sleep(80)
        if (!value) {
            window.document.getElementById(el.id).classList.remove("opacity-0", "h-0", "w-0", "hidden");
            window.document.getElementById(el.id).classList.add("opacity-100", "h-screen", "w-screen", "inline");
        } else {
            window.document.getElementById(el.id).classList.remove("opacity-100", "h-screen", "w-screen", "inline");
            window.document.getElementById(el.id).classList.add("opacity-0", "h-0", "w-0", "hidden");
        }

    }
}

function change_ps(state, value) {
    if (["start_one", "stop_one"].includes(state)) {
        if (window.pageState[state] == false) {
            window.pageState[state] = value;
            change_ps_class("change_ps_class_" + state, value);
        }
    } else {
        window.pageState[state] = value;
        change_ps_class("change_ps_class_" + state, value);
    }

}
window.topbarFn = {
    start: (info) => {
        change_ps("start", true);
        change_ps("start_one", true);
        change_ps("stop", false);
        change_ps("stop_one", false);
        topbar.show();
    },
    stop: (info) => {
        change_ps("start", false);
        change_ps("start_one", false);
        change_ps("stop", true);
        change_ps("stop_one", true);
        topbar.hide();
    }
}
window.addEventListener("phx:page-loading-start", info => window.topbarFn.start(info))
window.addEventListener("phx:page-loading-stop", info => window.topbarFn.stop(info))

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket
window.topbar = topbar;
window.change_ps = change_ps;
init_templet();

console.log("hi! :D");