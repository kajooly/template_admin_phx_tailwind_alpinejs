import $ from "jquery";

const BSKHooks = {};
/*
    ConnHost

    Use:

    <div id="test" phx-hook="ConnHost" data-target={@myself}>
        test hook
    </div>

*/
BSKHooks.ConnHost = {
    mounted() {
        const url = window.document.getElementById("conn_host").dataset.url;
        if (this.el.dataset.target == undefined)
            this.pushEvent("conn-host", { host: url })
        else
            this.pushEventTo(this.el.dataset.target, "conn-host", { host: url })
    }
}
BSKHooks.Support = {
        mounted() {
            const url = window.document.getElementById("conn_host").dataset.url;
            if (this.el.dataset.target == undefined)
                this.pushEvent("conn-host", { host: url })
            else
                this.pushEventTo(this.el.dataset.target, "conn-host", { host: url })
        }
    }
    //import { initMercadoPago, Wallet } from '@mercadopago/sdk-react'
    //initMercadoPago('APP_USR-3b96ce27-0580-4db6-9468-d8811bca3c2a');

/*
BSKHooks.MercadoPago = {
    mp: new MercadoPago('APP_USR-3b96ce27-0580-4db6-9468-d8811bca3c2a'),
    createCheckoutButton(preferenceId, elementID) {
        console.log(preferenceId);
        // Initialize the checkout
        const bricksBuilder = this.mp.bricks();

        const renderComponent = async(bricksBuilder) => {
            //console.log(window.checkoutButton[elementID]);
            if (window.checkoutButton[elementID] != undefined)
                console.log(window.checkoutButton[elementID]);
            if (window.checkoutButton[elementID] != undefined) window.checkoutButton[elementID].unmount();
            await bricksBuilder.create(
                'wallet',
                elementID, // class/id where the payment button will be displayed
                {
                    initialization: {
                        preferenceId: preferenceId
                    },
                    callbacks: {
                        onError: (error) => console.error(error),
                        onReady: () => {}
                    }
                }
            );
        };
        window.checkoutButton[elementID] = renderComponent(bricksBuilder);
    },
    mounted() {
        window.checkoutButton = {};
        //console.log(this.el.dataset);
        const _this = this;
        const orderData = {
            quantity: _this.el.dataset.quantity.replace(/[^0-9]/g, ''),
            description: _this.el.dataset.description,
            price: _this.el.dataset.price.replace(/[^0-9]/g, ''),
            back_urls: JSON.parse(_this.el.dataset.back)
        };
        //console.log("crear preferencia", orderData);
        fetch("https://mp.boscotron2000.com/create_preference", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(orderData),
            })
            .then(function(response) {
                //console.log("response", response);
                return response.json();
            })
            .then(function(preference) {
                //console.log("preference", preference);
                _this.createCheckoutButton(preference.id, _this.el.id + "_btn");
            })
            .catch(function(error) {
                console.error("Unexpected error", error);
            });
    }
}
*/
BSKHooks.Uploader = {
    mounted() {
        //console.log("Uploader", this.el);
        const inputElement = document.getElementById("photo_upload");
        console.log(inputElement);
        if (inputElement != undefined)
            inputElement.addEventListener("change", handleFiles, false);
        const _this = this;

        function load_icon(show) {
            const e = window.document.getElementById('photo_upload_icon');
            if (e != undefined)
                if (show) {
                    e.classList.remove('hidden');
                } else {
                    e.classList.add('hidden');
                }
        }

        function handleFiles() {
            const fileList = this.files; /* now you can work with the file list */
            console.log(fileList);
            const input = window.document.getElementById('photo_upload');

            if (!input.files || input.files.length === 0) {
                // console.error('Por favor, selecciona una imagen.');
            } else {
                _this.pushEventTo(_this.el.dataset.target, "load_photos_icon", true)
                const file = input.files[0];
                const formData = new FormData();
                formData.append('token', _this.el.dataset.token_upload);
                formData.append('fileToUpload', file);
                console.log(formData);
                $.ajax({
                    url: 'https://comsis.mx/up.php',
                    type: 'POST',
                    data: formData,
                    dataType: 'JSON',
                    processData: false,
                    contentType: false,
                    success: function(data) {
                        console.log('Respuesta del servidor:', data);
                        input.value = "";
                        // Maneja la respuesta del servidor aquí si es necesario
                        _this.pushEventTo(_this.el.dataset.target, "img_upload", data)
                        _this.pushEventTo(_this.el.dataset.target, "load_photos_icon", false)


                    },
                    error: function(xhr, status, error) {
                        console.error('Error al enviar la imagen:', error);
                        //                _this.pushEventTo(_this.el.dataset.target, "load_photos_icon", false)


                    }
                });
            }
        }
    }
}

//https://maps.google.com/maps?output=search&q=calzada+del+hueso+151+infonavit+el+hueso+ciudad+de+m%C3%A9xico&source=lnms&entry=mc&sa=X

BSKHooks.GetLongLat = {
    mounted() {
        //console.log("GetLongLat", this.el.id, this.el.dataset);
        const puEv = this.el.dataset["pushevent"] || null;
        const target = this.el.dataset["target"] || null;
        const _this = this;
        this.el.addEventListener("click", () => {
            const text = _this.el.innerHTML;
            _this.el.innerHTML = "Obteniendo...";
            _this.el.disabled = true;
            navigator.geolocation.getCurrentPosition((po) => {
                const data = {
                    lat: po.coords.latitude,
                    long: po.coords.longitude
                };
                //console.log(data, puEv);
                if (puEv)
                    _this.pushEventTo(target, puEv, { data: data });
                _this.el.innerHTML = text;
                _this.el.disabled = false;
            });
        });
    },
    updated() {
        //console.log("GetLongLat", this.el.id);
    }
}

BSKHooks.shortUrlToLatlon = {
    mounted() {
        //console.log("shortUrlToLatlon", this.el.id, this.el.dataset);
        const puEv = this.el.dataset["pushevent"] || null;
        const target = this.el.dataset["target"] || null;
        const _this = this;
        window.document.getElementById("get-cords-link-btn").addEventListener("click", () => {
            const text = _this.el.innerHTML;
            _this.el.innerHTML = "Obteniendo...";
            _this.el.disabled = true;
            //console.log(_this.el.value);


            var myHeaders = new Headers();
            myHeaders.append("Content-Type", "application/x-www-form-urlencoded");

            var urlencoded = new URLSearchParams();
            urlencoded.append("url", _this.el.value);
            //urlencoded.append("url", "https://goo.gl/maps/kzHcXQSE6PPWPgcU9");

            var requestOptions = {
                method: 'POST',
                headers: myHeaders,
                body: urlencoded,
                redirect: 'follow'
            };

            fetch("https://comsis.mx/api/maps/short_url_to_latlon/", requestOptions)
                .then(response => response.json())
                .then(result => {
                    const data = {
                        lat: result.result[0],
                        long: result.result[1]
                    };
                    //console.log(result, data, puEv);
                    if (puEv)
                        _this.pushEventTo(target, puEv, { data: data });
                    _this.el.innerHTML = text;
                    _this.el.disabled = false;
                })
                .catch(error => console.log('error', error));

        });
    },
    updated() {
        //console.log("shortUrlToLatlon", this.el.id);
    }
}

BSKHooks.InfiniteScroll = {
    page() { return this.el.dataset.page },
    mounted() {
        const puEv = this.el.dataset["pushevent"] || null;
        const target = this.el.dataset["target"] || null;
        const percentscroll = this.el.dataset["percentscroll"] || 90;
        this.pending = this.page()
        window.addEventListener("scroll", e => {
            console.log(this.page(), scrollAt(), percentscroll);
            if (this.pending == this.page() && scrollAt() > percentscroll) {
                this.pending = this.page() + 1
                this.pushEventTo(target, puEv, {})
            }
        })
    },
    reconnected() { this.pending = this.page() },
    updated() { this.pending = this.page() }
}


export default BSKHooks;