import { Selector, t } from 'testcafe';

export default class SignIn {
constructor(){
this.submitButton = Selector ('#submit-button');
this.name = Selector ('#developer-name');
}
    // typeAndClick = (t) =>{
    //     t
    //     .typeText('#developer-name', 'John Smith')
    //     .click('#submit-button')
    // };

   async typeAndClick(username){
        await t
        .typeText(this.submitButton, username)
        .click(this.name);
    }

}
