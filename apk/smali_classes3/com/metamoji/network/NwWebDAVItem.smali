.class public interface abstract Lcom/metamoji/network/NwWebDAVItem;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwWebDAVItem$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwWebDAVRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVItem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1281:1\n1#2:1282\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00002\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0012\u0010#\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J*\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00000\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00070)H\u0002J\"\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00070)H\u0016J\u000e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0014H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0005R\u0012\u0010\u000b\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0005R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0008R\u0014\u0010\u001b\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0008R\u0014\u0010\u001d\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0008R\u0014\u0010\u001e\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0008R\u0014\u0010 \u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0008\u00a8\u0006+\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVItem;",
        "",
        "href",
        "",
        "getHref",
        "()Ljava/lang/String;",
        "isCollection",
        "",
        "()Z",
        "displayName",
        "getDisplayName",
        "uriName",
        "getUriName",
        "deadProperties",
        "",
        "getDeadProperties",
        "()Ljava/util/Map;",
        "liveProperties",
        "getLiveProperties",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "parent",
        "getParent",
        "()Lcom/metamoji/network/NwWebDAVItem;",
        "isValid",
        "hasChildren",
        "getHasChildren",
        "isRoot",
        "hasDeadProperty",
        "getHasDeadProperty",
        "hasLiveProperty",
        "getHasLiveProperty",
        "findChildByDisplayName",
        "findChildByUriName",
        "findChildren",
        "",
        "out",
        "",
        "predicate",
        "Lkotlin/Function1;",
        "listChildren",
        "network"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$findChildByDisplayName$jd(Lcom/metamoji/network/NwWebDAVItem;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildByDisplayName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$findChildByUriName$jd(Lcom/metamoji/network/NwWebDAVItem;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildByUriName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$findChildren$jd(Lcom/metamoji/network/NwWebDAVItem;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildren(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getHasChildren$jd(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->getHasChildren()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$getHasDeadProperty$jd(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->getHasDeadProperty()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$getHasLiveProperty$jd(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->getHasLiveProperty()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$isRoot$jd(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->isRoot()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$listChildren$jd(Lcom/metamoji/network/NwWebDAVItem;)Ljava/util/List;
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->listChildren()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private findChildren(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/network/NwWebDAVItem;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/network/NwWebDAVItem;

    .line 169
    invoke-direct {v1, p1, p2}, Lcom/metamoji/network/NwWebDAVItem;->findChildren(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static listChildren$lambda$3(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public findChildByDisplayName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 3

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/network/NwWebDAVItem;

    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/metamoji/network/NwWebDAVItem;

    return-object v1
.end method

.method public findChildByUriName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 3

    const-string/jumbo v0, "uriName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/network/NwWebDAVItem;

    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVItem;->getUriName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/metamoji/network/NwWebDAVItem;

    return-object v1
.end method

.method public findChildren(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/network/NwWebDAVItem;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVItem;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildren(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeadProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public getHasChildren()Z
    .locals 1

    .line 136
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHasDeadProperty()Z
    .locals 1

    .line 140
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getDeadProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHasLiveProperty()Z
    .locals 1

    .line 142
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getLiveProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getHref()Ljava/lang/String;
.end method

.method public abstract getLiveProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParent()Lcom/metamoji/network/NwWebDAVItem;
.end method

.method public abstract getUriName()Ljava/lang/String;
.end method

.method public abstract isCollection()Z
.end method

.method public isRoot()Z
    .locals 1

    .line 138
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVItem;->getParent()Lcom/metamoji/network/NwWebDAVItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public listChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVItem;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/metamoji/network/NwWebDAVItem$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/network/NwWebDAVItem$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Lcom/metamoji/network/NwWebDAVItem;->findChildren(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
