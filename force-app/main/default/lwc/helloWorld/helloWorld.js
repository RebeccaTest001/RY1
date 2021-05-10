import { LightningElement, track } from 'lwc';
    export default class HelloWorld extends LightningElement {
        @track greetings = 'World';
        change(eve) {
            this.greetings = eve.target.value;
        }
    }