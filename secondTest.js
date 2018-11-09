import { Selector } from 'testcafe';
import  SignIn  from './secondPage';

fixture `Getting Started`
    .page `http://devexpress.github.io/testcafe/example`;

// let namePage = new SignIn();
const namePage = new SignIn();
test('My second test', async t => {
    // Test codenpm


    await namePage.typeAndClick('John Adams');
    await t.expect(true).eql(false);
});

