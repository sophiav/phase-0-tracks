# The anatomy of a Form: Form tags, input elements and their purpose


**Form tags:**
* form: the form element is the wrapper for all the different form controls. This element should always carry the action attribute and will usually have a method and id attribute too
* name: this give the form a name. The place this info will show up is in server-side programming i.e. when the form gets submitted, the web server will know which form got sent
* action: the value of this attribute should point to the website you want to load after the form has been submitted by the user. 
* method: the value of this attribute specifies the http method the browser uses to submit the form. Possible values are "post" and "get".
* fieldset: used to group together related form controls on a form. In this way we can wrap certain form controls together, creating logical grouping that can be handled differently than the rest of the inputs. This can help organize a form and make it easier to understand for the users. Most browsers will show the fieldset with a line around the edge to show how the elements inside it. th are related
* div: div stands for division or section of a document, and the div element is used for styling sections of a page and logical grouping. A div element can be nested inside other divs. It is a block level element (i.e. pushes other elements out of the way)
* label: represents a caption for an item in a user interface. This makes it easier for a user to identify what information is required of them to input in the fields provided
* input: this element is used to create several different interactive form controls for web-based forms in order to accept data from the user. it's very versatile - it's type attribute specifies what kind of form control should be rendered, such as text, email, password, checkbox etc.

**Input elements:**
* text: allows you to accept a single line input from a user that is a text (including numbers)
* email: allows you to enter an email address
* password: obscures text typed into the field and turns them into dots or asterisks so that characters are blocked out
* placeholder: on any text input, you can also use an attribute called palceholder whose value is text that will be displayed within the form field/text box until the user clicks in that area
* date: automatically displays date picker to accept a date input from a user
* checkbox: allows users to select (and deselect) one or more options in answer to a questions from the options provided
* select: this element is used to create a dropdown list box. Similar to radio buttons in that the user can only select 1 single item, but selects are preferred when you have multiple options to display for the user without overwhelming the page. It contains two or more option elements that are used to specify the options  that the user can select.
* submit: allows you to create a submit button. This used to send a form to the server i.e. once a user has finished filling out a form, they should be ablt to click this button to send their data to the web server via the action and method attributes we specified in the form element. When this button is clicked the user will be redirected to the URL that is defined in the action attribute of the form element.
