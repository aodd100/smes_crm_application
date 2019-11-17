var AjaxHelper;
(function (AjaxHelper) {
    var HttpVerbs;
    (function (HttpVerbs) {
        HttpVerbs[HttpVerbs["GET"] = 0] = "GET";
        HttpVerbs[HttpVerbs["POST"] = 1] = "POST";
        HttpVerbs[HttpVerbs["PUT"] = 2] = "PUT";
        HttpVerbs[HttpVerbs["DELETE"] = 3] = "DELETE";
    })(HttpVerbs || (HttpVerbs = {}));
    var OptinUserApiClient = /** @class */ (function () {
        function OptinUserApiClient(baseUrl) {
            this.baseUrl = baseUrl;
        }
        OptinUserApiClient.prototype.callWebApi = function (url, verb, data, callback) {
            var xhr = new XMLHttpRequest();
            xhr.onload = function () {
                var data = JSON.parse(xhr.responseText);
                callback(data);
            };
            xhr.onerror = function () {
                alert("Error while calling Web API");
            };
            var httpVerb;
            switch (verb) {
                case HttpVerbs.GET:
                    httpVerb = "GET";
                    break;
                case HttpVerbs.POST:
                    httpVerb = "POST";
                    break;
                case HttpVerbs.PUT:
                    httpVerb = "PUT";
                    break;
                case HttpVerbs.DELETE:
                    httpVerb = "DELETE";
                    break;
            }
            xhr.open(httpVerb, url);
            xhr.setRequestHeader("Content-Type", "application/json");
            if (data == null) {
                xhr.send();
            }
            else {
                xhr.send(JSON.stringify(data));
            }
        };
        OptinUserApiClient.prototype.Get = function (callback) {
            this.callWebApi(this.baseUrl, HttpVerbs.GET, null, callback);
        };
        OptinUserApiClient.prototype.GetByID = function (id, callback) {
            this.callWebApi(this.baseUrl + "/" + id, HttpVerbs.GET, null, callback);
        };
        OptinUserApiClient.prototype.Post = function (data, callback) {
            this.callWebApi(this.baseUrl, HttpVerbs.POST, data, callback);
        };
        OptinUserApiClient.prototype.Put = function (data, callback) {
            this.callWebApi(this.baseUrl + "/" + data.OPTINUSERID, HttpVerbs.PUT, data, callback);
        };
        OptinUserApiClient.prototype.Delete = function (id, callback) {
            this.callWebApi(this.baseUrl + "/" + id, HttpVerbs.DELETE, null, callback);
        };
        return OptinUserApiClient;
    }());
    AjaxHelper.OptinUserApiClient = OptinUserApiClient;
    var CustomerUI = /** @class */ (function () {
        function CustomerUI() {
        }
        CustomerUI.prototype.GetCallback = function (data) {
            alert(data.length);
        };
        CustomerUI.prototype.GetByIDCallback = function (data) {
            alert(data.OPTINUSERID);
        };
        CustomerUI.prototype.PostCallback = function (msg) {
            alert(msg);
        };
        CustomerUI.prototype.PutCallback = function (msg) {
            alert(msg);
        };
        CustomerUI.prototype.DeleteCallback = function (msg) {
            alert(msg);
        };
        return CustomerUI;
    }());
    AjaxHelper.CustomerUI = CustomerUI;
})(AjaxHelper || (AjaxHelper = {}));
//# sourceMappingURL=AjaxHelper.js.map