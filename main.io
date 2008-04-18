Directory folderNamed("src") fileNames sort foreach(name,
    if(name != "main.io" and name endsWithSeq(".io"),
        "Loading #{name}\n" interpolate print
        doFile("src/" .. name)
    )    
)

c := Collocation clone main
