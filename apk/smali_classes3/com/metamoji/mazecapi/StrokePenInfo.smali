.class public Lcom/metamoji/mazecapi/StrokePenInfo;
.super Ljava/lang/Object;
.source "StrokePenInfo.java"


# instance fields
.field private _inkId:Ljava/lang/String;

.field private _penId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_penId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_inkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazecapi/StrokePenInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 42
    :cond_1
    check-cast p1, Lcom/metamoji/mazecapi/StrokePenInfo;

    .line 44
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_penId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/mazecapi/StrokePenInfo;->_penId:Ljava/lang/String;

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    return v2

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_inkId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/mazecapi/StrokePenInfo;->_inkId:Ljava/lang/String;

    if-eq v1, p1, :cond_7

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getInkID()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_inkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPenID()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_penId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_penId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokePenInfo;->_inkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method
