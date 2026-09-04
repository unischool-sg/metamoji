.class public Lcom/metamoji/ns/service/NsCollaboServiceException;
.super Ljava/lang/RuntimeException;
.source "NsCollaboServiceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_errorCode:Ljava/lang/String;

.field m_responseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    iput p1, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_responseCode:I

    .line 51
    iput-object p2, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_errorCode:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkErrorCode()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iput p1, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_responseCode:I

    .line 58
    iput-object p2, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_errorCode:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkErrorCode()V

    return-void
.end method

.method public static checkResponseCode(II)Z
    .locals 0

    if-gt p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x64

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static errorCode(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 101
    instance-of v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;

    if-eqz v0, :cond_0

    .line 102
    check-cast p0, Lcom/metamoji/ns/service/NsCollaboServiceException;

    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static responseCodeFromException(Ljava/lang/Exception;)I
    .locals 1

    .line 88
    instance-of v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Lcom/metamoji/ns/service/NsCollaboServiceException;

    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->getResponseCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method checkErrorCode()V
    .locals 2

    .line 64
    iget v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_responseCode:I

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkResponseCode(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_errorCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 66
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 67
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setDeviceCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_responseCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    iget v0, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_responseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;->m_errorCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%d] (%s) %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
