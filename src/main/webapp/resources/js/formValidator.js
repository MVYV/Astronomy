/**
 * Created by Вальків on 04.08.2015.
 */

function validateLogin(minLength, maxLength, inputField, validationResult, validationRules)
{
    if(inputField.value.length < minLength || inputField.value.length > maxLength)
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validNo.png")';
        validationRules.style.color = '#ff0000';
    }
    else
    {
        validationResult.style.backgroundImage = 'url("/resources/images/validYes.png")';
        validationRules.style.color = '#008000';
    }
}