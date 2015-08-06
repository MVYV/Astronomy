function validateLogin(minLength, maxLength, inputField, validationResult, validationRules)
{
    var regExpression = /^[A-z0-9_]+$/;
    if(inputField.value.length < minLength || inputField.value.length > maxLength || !inputField.value.match(regExpression))
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
        return false;
    }
    else
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
        return true;
    }
}

function validateEmail(inputField, validationResult, validationRules)
{
    var regExpression = /^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$/;
    if(!inputField.value.match(regExpression))
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
        return false;
    }
    else
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
        return true;
    }
}

function validateCountry(inputField, validationResult, validationRules)
{
    var regExpression = /^[a-zA-Z]+$/;
    if(!inputField.value.match(regExpression))
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
        return false;
    }
    else
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
        return true;
    }
}

function validateCity(inputField, validationResult, validationRules)
{
    var regExpression = /^[a-zA-Z]+$/;
    if(!inputField.value.match(regExpression))
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
        return false;
    }
    else
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
        return true;
    }
}


function validatePassword(inputField, validationResult, validationRules)
{
    var regExpression = /(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/;
    if(!inputField.value.match(regExpression))
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
        return false;
    }
    else
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
        return true;
    }
}

function validatePasswordConfirmation(inputFieldPass, inputFieldPassConf, validationResult, validationRules)
{
    if(inputFieldPass.value == inputFieldPassConf.value)
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
        return true;
    }
    else if(inputFieldPass.value != inputFieldPassConf.value)
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
        return false;
    }
    else{}
}

function validateForm(form)
{
    if(validateLogin(2, 15,form["user_login"], form["validateLoginResult"], form["validateLoginRules"]) &&
       validateEmail(form["user_email"], form["validateEmailResult"], form["validateEmailRules"]) &&
       validateCountry(form["user_country"], form["validateCountryResult"], form["validateCountryRules"]) &&
       validateCity(form["user_city"], form["validateCityResult"], form["validateCityRules"]) &&
       validatePassword(form["user_password"], form["validatePasswordResult"], form["validatePasswordRules"]) &&
       validatePasswordConfirmation(form["user_password"], form["user_password_conf"], form["validatePasswordConfResult"], form["validatePasswordConfRules"]))
    {
        form.submit();
    }
    else
    {
        alert("FATAL ERROR!!!");
    }
}

