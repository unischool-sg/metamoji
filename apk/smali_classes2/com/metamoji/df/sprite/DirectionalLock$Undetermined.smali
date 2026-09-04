.class Lcom/metamoji/df/sprite/DirectionalLock$Undetermined;
.super Lcom/metamoji/df/sprite/DirectionalLock$St;
.source "DirectionalLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/DirectionalLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Undetermined"
.end annotation


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/DirectionalLock$St;-><init>(FF)V

    return-void
.end method


# virtual methods
.method process(FF)Lcom/metamoji/df/sprite/DirectionalLock$St;
    .locals 9

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 49
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    const/high16 v6, 0x42c80000    # 100.0f

    if-lez v3, :cond_1

    div-float v3, v1, v0

    float-to-double v7, v3

    cmpg-double v3, v7, v4

    if-gez v3, :cond_1

    cmpl-float p2, v0, v6

    if-lez p2, :cond_0

    .line 55
    new-instance p2, Lcom/metamoji/df/sprite/DirectionalLock$Horizontal;

    invoke-direct {p2, p1, v2}, Lcom/metamoji/df/sprite/DirectionalLock$Horizontal;-><init>(FF)V

    return-object p2

    :cond_0
    move p2, v2

    goto :goto_0

    :cond_1
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    div-float v3, v0, v1

    float-to-double v7, v3

    cmpg-double v3, v7, v4

    if-gez v3, :cond_3

    cmpl-float p1, v0, v6

    if-lez p1, :cond_2

    .line 61
    new-instance p1, Lcom/metamoji/df/sprite/DirectionalLock$Vertical;

    invoke-direct {p1, v2, p2}, Lcom/metamoji/df/sprite/DirectionalLock$Vertical;-><init>(FF)V

    return-object p1

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    cmpl-float v0, v0, v6

    if-gtz v0, :cond_5

    cmpl-float v0, v1, v6

    if-lez v0, :cond_4

    goto :goto_1

    .line 71
    :cond_4
    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/DirectionalLock$Undetermined;->dx:F

    .line 72
    iput p2, p0, Lcom/metamoji/df/sprite/DirectionalLock$Undetermined;->dy:F

    return-object p0

    .line 66
    :cond_5
    :goto_1
    new-instance v0, Lcom/metamoji/df/sprite/DirectionalLock$St;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/df/sprite/DirectionalLock$St;-><init>(FF)V

    return-object v0
.end method
