function validationCorrect(vResult, vRules)
{
    vResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
    vRules.style.color = '#008000';
    return true;
}

function validationUnCorrect(vResult, vRules)
{
    vResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
    vRules.style.color = '#ff0000';
    return false;
}

function validateLogin(minLength, maxLength, inputField, validationResult, validationRules)
{
    var regExpression = /^[A-z0-9_]+$/;
    if(inputField.value.length < minLength || inputField.value.length > maxLength || !inputField.value.match(regExpression))
    {
        validationUnCorrect(validationResult, validationRules)
    }
    else
    {
        validationCorrect(validationResult, validationRules)
    }
}

function validateEmail(inputField, validationResult, validationRules)
{
    var regExpression = /^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$/;
    if(!inputField.value.match(regExpression))
    {
        validationUnCorrect(validationResult, validationRules)
    }
    else
    {
        validationCorrect(validationResult, validationRules)
    }
}

function validateCountry(inputField, validationResult, validationRules)
{
    var regExpression = /^[a-zA-Z]+$/;
    if(!inputField.value.match(regExpression))
    {
        validationUnCorrect(validationResult, validationRules)
    }
    else
    {
        validationCorrect(validationResult, validationRules)
    }
}

function validateCity(inputField, validationResult, validationRules)
{
    var regExpression = /^[a-zA-Z]+$/;
    if(!inputField.value.match(regExpression))
    {
        validationUnCorrect(validationResult, validationRules)
    }
    else
    {
        validationCorrect(validationResult, validationRules)
    }
}


function validatePassword(inputField, validationResult, validationRules)
{
    var regExpression = /(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/;
    if(!inputField.value.match(regExpression))
    {
        validationUnCorrect(validationResult, validationRules)
    }
    else
    {
        validationCorrect(validationResult, validationRules)
    }
}

function validatePasswordConfirmation(inputFieldPass, inputFieldPassConf, validationResult, validationRules)
{
    if(inputFieldPass.value == inputFieldPassConf.value)
    {
        validationCorrect(validationResult, validationRules)
    }
    else if(inputFieldPass.value != inputFieldPassConf.value)
    {
        validationUnCorrect(validationResult, validationRules)
    }
    else{}
}

function validateForm(form)
{
    if(validateLogin(2, 25, form["user_login"], form["validateLoginResult"], form["validateLoginRules"]) &&
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

/*if(validateLogin(2, 25, form['user_login'], form['validateLoginResult'], form['validateLoginRules']) &&
validateEmail(form['user_email'], form['validateEmailResult'], form['validateEmailRules']) &&
validateCountry(form['user_country'], form['validateCountryResult'], form['validateCountryRules']) &&
validateCity(form['user_city'], form['validateCityResult'], form['validateCityRules']) &&
validatePassword(form['user_password'], form['validatePasswordResult'], form['validatePasswordRules']) &&
validatePasswordConfirmation(form['user_password'], form['user_password_conf'], form['validatePasswordConfResult'], form['validatePasswordConfRules']))*/

/*function testValidator(form)
 {
 if(document.getElementById('validateLoginRules').style.color == '#008000' &&
 document.getElementById('validateEmailRules').style.color == '#008000' &&
 document.getElementById('validateCountryRules').style.color == '#008000' &&
 document.getElementById('validateCityRules').style.color == '#008000' &&
 document.getElementById('validatePasswordRules').style.color == '#008000' &&
 document.getElementById('validatePasswordConfRules').style.color == '#008000')
 {
 form.submit();
 }
 else
 {
 alert("FATAL ERROR!!!");
 }
 }*/