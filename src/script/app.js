const userForm = document.querySelector("#userForm")
const userInput = userForm.querySelector("#userInput")
const userShortenedLink = userForm.querySelector("#userShortenedLink")

userForm.addEventListener("submit",(evt)=>{
    evt.preventDefault()

    const userLink = userInput.value
    const sendData = JSON.stringify({"link":userLink})
    fetch("http://ec2-52-42-75-134.us-west-2.compute.amazonaws.com:8080/url",{
        method:"post",
        headers:{
            "Content-Type":"application/json"
        },
        body:sendData
    }).then(res => res.json()).then(data =>{
        userShortenedLink.style.display = "block"
        userShortenedLink.textContent = `Your shortened link is ${data.url}`
        console.log(data);
    })

})