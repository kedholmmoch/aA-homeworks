const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits() {
    reader.question('Would you like some tea? (yes or no)', function(answer1) {
        console.log(`You said ${answer1}`);
        reader.question('Would you like some biscuits? (yes or no)', function(answer2) {

            let verb1;
            let verb2;

            if (answer1 === 'yes' || answer1 === 'Yes') {
                verb1 = 'do';
            } else {
                verb1 = "don't";
            }

            if (answer2 === 'yes' || answer2 === 'Yes') {
                verb2 = 'do';
            } else {
                verb2 = "don't";
            }

            console.log(`So you ${verb1} want tea and you ${verb2} want biscuits`);
            reader.close();
        });
    });
}

teaAndBiscuits();