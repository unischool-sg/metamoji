.class Lcom/metamoji/df/sprite/DirectionalLock$Vertical;
.super Lcom/metamoji/df/sprite/DirectionalLock$St;
.source "DirectionalLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/DirectionalLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Vertical"
.end annotation


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/DirectionalLock$St;-><init>(FF)V

    return-void
.end method


# virtual methods
.method process(FF)Lcom/metamoji/df/sprite/DirectionalLock$St;
    .locals 0

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/metamoji/df/sprite/DirectionalLock$Vertical;->dx:F

    .line 94
    iput p2, p0, Lcom/metamoji/df/sprite/DirectionalLock$Vertical;->dy:F

    return-object p0
.end method
