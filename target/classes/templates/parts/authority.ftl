<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
        >

<#if known>
    <#assign
    student = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = student.getUsername()
    isAuthority = student.isAuthority()
    studentId = student.getId()
    >

    <#else >
    <#assign
    name = "unknown"
    isAuthority = false
    >
</#if>