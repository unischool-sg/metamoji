.class public Lcom/metamoji/un/text/UnTextUnitEditUserInfo;
.super Ljava/lang/Object;
.source "UnTextUnitEditUserInfo.java"


# instance fields
.field private _editUserId:Ljava/lang/String;

.field private _unitId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextUnitEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnitEditUserInfo;
    .locals 1

    .line 12
    new-instance v0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    invoke-direct {v0}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;-><init>()V

    .line 13
    iput-object p0, v0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_unitId:Ljava/lang/String;

    .line 14
    iput-object p1, v0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 19
    instance-of v0, p1, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    check-cast p1, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 24
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_unitId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_unitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getEditUserId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->_unitId:Ljava/lang/String;

    return-object v0
.end method
