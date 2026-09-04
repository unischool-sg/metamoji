.class public Lcom/metamoji/mazec/stroke/StrokePenInfo;
.super Ljava/lang/Object;
.source "StrokePenInfo.java"


# instance fields
.field private mInkId:Ljava/lang/String;

.field private mPenId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mPenId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mInkId:Ljava/lang/String;

    return-void
.end method

.method public static createStrokePenInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/mazec/stroke/StrokePenInfo;
    .locals 1

    .line 11
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokePenInfo;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/stroke/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static strokePenInfoFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokePenInfo;
    .locals 2

    .line 15
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokePenInfo;

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    iget-object p0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/metamoji/mazec/stroke/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazec/stroke/StrokePenInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    check-cast p1, Lcom/metamoji/mazec/stroke/StrokePenInfo;

    .line 43
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mPenId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mPenId:Ljava/lang/String;

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    return v2

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mInkId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mInkId:Ljava/lang/String;

    if-eq v1, p1, :cond_7

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 52
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

    .line 32
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mInkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPenID()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mPenId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mPenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePenInfo;->mInkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method
