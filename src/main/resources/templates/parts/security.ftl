<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    student = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = student.getUsername()
    isAdmin = student.isAdmin()
    studentId = student.getId()
    >

<#else>
    <#assign
    name = "unknown"
    isAdmin = false

    >

</#if>