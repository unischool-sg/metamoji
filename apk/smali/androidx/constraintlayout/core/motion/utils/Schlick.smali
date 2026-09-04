.class public Landroidx/constraintlayout/core/motion/utils/Schlick;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "Schlick.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field mEps:D

.field mS:D

.field mT:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mStr:Ljava/lang/String;

    const/16 v0, 0x28

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2c

    .line 33
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 34
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    add-int/lit8 v2, v2, 0x1

    .line 35
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 36
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    return-void
.end method

.method private dfunc(D)D
    .locals 13

    .line 47
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    cmpg-double v2, p1, v0

    .line 50
    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    if-gez v2, :cond_0

    mul-double v5, v3, v0

    mul-double/2addr v5, v0

    sub-double v7, v0, p1

    mul-double/2addr v7, v3

    add-double/2addr v7, p1

    sub-double/2addr v0, p1

    mul-double/2addr v3, v0

    add-double/2addr v3, p1

    mul-double/2addr v7, v3

    div-double/2addr v5, v7

    return-wide v5

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v7, v0, v5

    mul-double/2addr v7, v3

    sub-double v9, v0, v5

    mul-double/2addr v7, v9

    neg-double v9, v3

    sub-double v11, v0, p1

    mul-double/2addr v9, v11

    sub-double/2addr v9, p1

    add-double/2addr v9, v5

    neg-double v2, v3

    sub-double/2addr v0, p1

    mul-double/2addr v2, v0

    sub-double/2addr v2, p1

    add-double/2addr v2, v5

    mul-double/2addr v9, v2

    div-double/2addr v7, v9

    return-wide v7
.end method

.method private func(D)D
    .locals 11

    .line 40
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    cmpg-double v2, p1, v0

    .line 43
    iget-wide v3, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    if-gez v2, :cond_0

    mul-double v5, v0, p1

    sub-double/2addr v0, p1

    mul-double/2addr v3, v0

    add-double/2addr p1, v3

    div-double/2addr v5, p1

    return-wide v5

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v7, v5, v0

    sub-double v9, p1, v5

    mul-double/2addr v7, v9

    sub-double/2addr v5, p1

    sub-double/2addr v0, p1

    mul-double/2addr v3, v0

    sub-double/2addr v5, v3

    div-double/2addr v7, v5

    return-wide v7
.end method


# virtual methods
.method public get(D)D
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Schlick;->func(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDiff(D)D
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Schlick;->dfunc(D)D

    move-result-wide p1

    return-wide p1
.end method
