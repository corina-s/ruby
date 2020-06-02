const nemo = ['nemo'];

function findNemo(array){

    for(let i = 0; i < array.length; i++){
        if (array[i] === 'nemo'){
            console.log('found NEMO!');
        }
    }

}

findNemo(nemo);
// O(n)

function funChallenge(input) {
    let a = 10; //O(1)
    a = 50 + 3; //O(1)

    for (let i = 0; i < input.length; i++) { //O(n) reflects the input loops are linear time
        anotherFunction(); //O(n)
        let stranger = true; //O(n)
        a++; //O(n)
    }
    return a; //O(1)
}
// O(3 + 4n) -> O(n)

function anotherFunChallenge(input) {
    let a = 5;
    let b = 10;
    let c = 50;
    for (let i = 0; i < input; i++) {
        let x = i + 1;
        let y = i + 2;
        let z = i + 3;

    }
    for (let j = 0; j < input; j++) {
        let p = j * 2;
        let q = j * 2;
    }
    let whoAmI = "I don't know";
}
// O(3 + 3n + 2n + 1) -> O(n)
