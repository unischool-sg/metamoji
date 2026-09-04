.class public Lcom/metamoji/cm/CmContext;
.super Ljava/lang/Object;
.source "CmContext.java"


# instance fields
.field private extdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clearExtData()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public extraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getExtData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public setExtData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cm/CmContext;->extdata:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
