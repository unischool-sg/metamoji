.class public Lcom/metamoji/nt/NtUnitEditUserInfo;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfo.java"


# instance fields
.field private _editUserId:Ljava/lang/String;

.field private _unitId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUnitEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserInfo;
    .locals 1

    .line 16
    new-instance v0, Lcom/metamoji/nt/NtUnitEditUserInfo;

    invoke-direct {v0}, Lcom/metamoji/nt/NtUnitEditUserInfo;-><init>()V

    .line 17
    iput-object p0, v0, Lcom/metamoji/nt/NtUnitEditUserInfo;->_unitId:Ljava/lang/String;

    .line 18
    iput-object p1, v0, Lcom/metamoji/nt/NtUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 23
    instance-of v0, p1, Lcom/metamoji/nt/NtUnitEditUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    check-cast p1, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 28
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfo;->_unitId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/nt/NtUnitEditUserInfo;->_unitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/nt/NtUnitEditUserInfo;->_editUserId:Ljava/lang/String;

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

    .line 44
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfo;->_editUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfo;->_unitId:Ljava/lang/String;

    return-object v0
.end method
