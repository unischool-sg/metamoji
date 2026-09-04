.class Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager$1;
.super Ljava/lang/ThreadLocal;
.source "DrMsMeshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;
    .locals 1

    .line 334
    new-instance v0, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager$1;->initialValue()Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;

    move-result-object v0

    return-object v0
.end method
