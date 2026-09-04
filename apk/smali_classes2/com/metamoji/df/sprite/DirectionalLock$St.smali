.class Lcom/metamoji/df/sprite/DirectionalLock$St;
.super Ljava/lang/Object;
.source "DirectionalLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/DirectionalLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "St"
.end annotation


# instance fields
.field dx:F

.field dy:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/metamoji/df/sprite/DirectionalLock$St;->dx:F

    .line 26
    iput p2, p0, Lcom/metamoji/df/sprite/DirectionalLock$St;->dy:F

    return-void
.end method


# virtual methods
.method process(FF)Lcom/metamoji/df/sprite/DirectionalLock$St;
    .locals 0

    .line 36
    iput p1, p0, Lcom/metamoji/df/sprite/DirectionalLock$St;->dx:F

    .line 37
    iput p2, p0, Lcom/metamoji/df/sprite/DirectionalLock$St;->dy:F

    return-object p0
.end method
