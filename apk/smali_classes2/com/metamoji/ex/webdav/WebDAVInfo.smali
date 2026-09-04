.class public Lcom/metamoji/ex/webdav/WebDAVInfo;
.super Ljava/lang/Object;
.source "WebDAVInfo.java"


# instance fields
.field private _displayName:Ljava/lang/String;

.field private _host:Ljava/lang/String;

.field private _password:Ljava/lang/String;

.field private _root:Ljava/lang/String;

.field private _userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 39
    const-string v0, ""

    const-string v1, "/$"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_root:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_host:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_userName:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_password:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_displayName:Ljava/lang/String;

    .line 43
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_root:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/net/URL;

    iget-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_root:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_root:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_host:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_host:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_userName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_password:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_displayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_root:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_displayName:Ljava/lang/String;

    return-void
.end method

.method public setHots(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_host:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_password:Ljava/lang/String;

    return-void
.end method

.method public setRoot(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_root:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/ex/webdav/WebDAVInfo;->_userName:Ljava/lang/String;

    return-void
.end method
