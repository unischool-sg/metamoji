.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForGetServletInfo.java"


# instance fields
.field public companyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;->companyId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    const-string v1, "cosmos/GetServletInfo?companyID=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0
.end method
