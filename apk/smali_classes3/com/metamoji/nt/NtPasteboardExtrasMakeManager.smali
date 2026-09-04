.class public Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasMakeManager.java"


# instance fields
.field _handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtPasteboardExtrasMakeHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->_handlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public installHandler(Lcom/metamoji/nt/NtPasteboardExtrasMakeHandler;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->_handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->_handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandler;

    .line 44
    invoke-interface {v2, v0, p1, p2}, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandler;->handleMakePasteboardExtra(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
