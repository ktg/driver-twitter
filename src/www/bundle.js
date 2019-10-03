let callbackURL = "";
if(parent) {
	callbackURL = parent.getOauthCallbackURL();
}
document.getElementById('callback').value = callbackURL;
console.log("Callback");
console.log(callbackURL);
console.log(parent.startOauth);

const fields = document.getElementsByClassName('mdc-text-field');
for (let field of fields) {
	mdc.textField.MDCTextField.attachTo(field);
}
