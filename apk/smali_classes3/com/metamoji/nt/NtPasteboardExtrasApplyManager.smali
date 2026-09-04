.class public Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasApplyManager.java"


# instance fields
.field _handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;->_handlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public applyPasteboardExtras(Ljava/util/Map;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;->_handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;

    .line 41
    invoke-interface {v2, p1}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;->checkVersion(Ljava/util/Map;)Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    move-result-object v3

    .line 42
    sget-object v4, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager$1;->$SwitchMap$com$metamoji$nt$NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult:[I

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 46
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;

    .line 55
    invoke-interface {v1, p1, p2, p3}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;->handleApplyPasteboardExtra(Ljava/util/Map;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public installHandler(Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;->_handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
