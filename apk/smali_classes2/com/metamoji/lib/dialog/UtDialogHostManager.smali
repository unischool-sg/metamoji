.class public final Lcom/metamoji/lib/dialog/UtDialogHostManager;
.super Ljava/lang/Object;
.source "UtDialogHost.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/IUtDialogHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;,
        Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;,
        Lcom/metamoji/lib/dialog/UtDialogHostManager$ReceptorWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0003\u001f !B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u0086\u0002J%\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0\u0010H\u0086\u0002J\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u0006H\u0086\u0002J\u0016\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0007J\"\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0\u0010J\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0001J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0001J\u0006\u0010\u0018\u001a\u00020\rJ<\u0010\u0019\u001a\u000c\u0012\u0004\u0012\u0002H\u001b0\u001aR\u00020\u0000\"\u0008\u0008\u0000\u0010\u001b*\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00062\u0018\u0010\u001c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001b0\u001d\u0012\u0004\u0012\u00020\r0\u0010J$\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0018\u00010\u001aR\u00020\u0000\"\u0008\u0008\u0000\u0010\u001b*\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0006R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "Lcom/metamoji/lib/dialog/IUtDialogHost;",
        "<init>",
        "()V",
        "receptorMap",
        "",
        "",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "hostList",
        "",
        "queryDialogResultReceptor",
        "tag",
        "set",
        "",
        "r",
        "fn",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "get",
        "setReceptor",
        "removeReceptor",
        "addChildHost",
        "host",
        "removeChildHost",
        "clear",
        "register",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;",
        "D",
        "submit",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;",
        "find",
        "ReceptorWrapper",
        "ISubmission",
        "NamedReceptor",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final hostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/IUtDialogHost;",
            ">;"
        }
    .end annotation
.end field

.field private final receptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->hostList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addChildHost(Lcom/metamoji/lib/dialog/IUtDialogHost;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->hostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final find(Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "TD;>;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object p1

    return-object p1
.end method

.method public queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->hostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/IUtDialogHost;

    .line 71
    invoke-interface {v1, p1}, Lcom/metamoji/lib/dialog/IUtDialogHost;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final register(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission<",
            "TD;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "TD;>;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;-><init>(Lcom/metamoji/lib/dialog/UtDialogHostManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final removeChildHost(Lcom/metamoji/lib/dialog/IUtDialogHost;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeReceptor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final set(Ljava/lang/String;Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 83
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final set(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHostManager;->receptorMap:Ljava/util/Map;

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialogHostManager$ReceptorWrapper;

    invoke-direct {v1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager$ReceptorWrapper;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setReceptor(Ljava/lang/String;Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->set(Ljava/lang/String;Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;)V

    return-void
.end method

.method public final setReceptor(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->set(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
