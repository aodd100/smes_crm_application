function toDate(date) {
    var from = date.split("/");
    var dt = new Date(from[2], from[1] - 1, from[0]);
    var formattedDate = (dt.getMonth() + 1) + "/" + dt.getDate()  + "/" + dt.getFullYear();
    return formattedDate;
}
function check_name($el, name, text) {
    var pattern = /^[a-zA-Z ]*$/;
    if (pattern.test(text) && text !== 'na' ) {
        return true;
    } else {
        return false;
    }
}
function check_AlaphNumeric($el, name, text) {
    var pattern = /^[a-zA-Z0-9,. ]*$/;
    if (pattern.test(text) && text !== 'na') {
        return true;
    } else {
        return false;
    }
}
function check_PHONE($el, name, text) {
    var pattern = /^[0-9 ]*$/;
    if (pattern.test(text) && text !== 'na') {
        return true;
    } else {
        return false;
    }
}
function check_web($el, name, text) {
    var pattern = /^[a-zA-Z0-9.]*$/;
    if (pattern.test(text) && text !== 'na') {
        return true;
    } else {
        return false;
    }
}
function check_web1($el, name, text) {
    var pattern = /^[a-zA-Z0-9.]*$/;
    if (pattern.test(text) && text !== ' ') {
        return true;
    } else {
        return false;
    }
}
function check_faxval($el, name, text) {
    var numbers = /^[\+? *[1-9]+]?[0-9 ]+$/; //Bad regex
    if (text.value.match(numbers)) {
        return true;
    } else {
        return false;
    }
};
function check_date($el, name, text) {
    var pattern = /\d{1,2}[/\\]\d{1,2}[/\\]\d{1,4}/;
    if (pattern.test(text)) {
        return true;
    } else {
        return false;
    }
}
function check_password(el, name) {
    var password_length = $("#" + el).val().length;
    if (password_length < 8) {
        return false;
    } else {
        return true;
    }
}

function check_Confirmpassword($el, name) {
    check_password(el, name);
    if ($("#password").val() == $("#password_confirm_").val()) {
        $el.parent().find('.error').remove();
        return true;
    } else {

        return false;
    }
}

function check_mail($el) {
    var pattern = new RegExp(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/);
    var elVal = $el.val();
    if (pattern.test(elVal) && elVal !== '') {
        $el.parent().find('.error').remove();
        return true;
    } else {

        return false;
    }
}
function isFutureDate(value) {
    return new Date().getTime() <= new Date(value).getTime();
}
$('[name*="birthdate"]').datepicker({
    dateFormat: 'yy-mm-dd',
    changeMonth: true,
    changeYear: true,
    minDate: "-70y",
    maxDate: "-18y -1d",
    yearRange: 'c-70:+0',
    defaultDate: '+18y -1d',
    showMonthAfterYear: true
});

$.validator.methods.email = function (value, element) {
    return this.optional(element) || /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i.test(value);
}

$.validator.methods.phone = function (value, element) {
    return this.optional(element) || /\+?\d{3}(\s|\/|\-)?\d{2}(\s|\/|\-)?[0-9\s\/\-]{7,12}/i.test(value);
}

$.validator.methods.captcha = function (value, element) {
    return this.optional(element) || /^\d{4}$/i.test(value);
}

$.validator.methods.birthDate = function (value, element) {
    return this.optional(element) || /^\d\d\d\d\-\d\d\-\d\d$/i.test(value);
}

$.validator.addMethod('filesize', function (value, element, param) {
    // param = size (in bytes) 
    // element = element to validate (<input>)
    // value = value of the element (file name)
    return this.optional(element) || (element.files[0].size <= param)
});


$(document).ready(function () {
    $('form.wpcf7-form input[name="birthdate"]').attr('readOnly', 'true');

    $('#register-form').validate({

        rules: {
            USERACCOUNT: {
                minlength: 10,
                required: true,
                USERACCOUNT: true
            },
            FIRSTNAME: {
                minlength: 2,
                required: true
            },
            LASTNAME: {
                minlength: 2,
                required: true
            },
            birthdate: {
                birthdate: true
            },
            saddress: {
                required: true,
                minlength: 2
            },
            city: {
                required: true,
                minlength: 2
            },
            state: {
                required: true
            },
            phone: {
                required: true,
                phone: true
            },attachment01: {
                extension: "doc|pdf|zip|rar|jpg|gif|png",
                filesize: 10485760
            },
            captcha: {
                required: true,
                captcha: true
            },
            lgarea: {
                required: true,
                minlength: 2
            },
            agree: {
                required: true
            }
        },
        messages: {
            name: "Should contain at least 2 alpha characters.",
            surname: "Should contain at least 2 alpha characters.",
            birthdate: "Not a valid date. Date format: yyyy-mm-dd.",
            saddress: "Should contain at least 2 alpha characters.",
            city: "Should contain at least 2 alpha characters.",
            phone: "Should have format similar to (+)XXX XX XXXXXXX.",
            email: "Should have format similar to example@example.com.",
            attachment01: "Max size is 10MB. Allowed extensions are: doc, pdf, zip, rar, jpg, gif, png.",
            captcha: "Should contain 4 numeric characters.",
            lgarea: "Should contain at least 2 alpha characters.",
            agree: "You must agree to the terms and conditions."
        }
    });
});
