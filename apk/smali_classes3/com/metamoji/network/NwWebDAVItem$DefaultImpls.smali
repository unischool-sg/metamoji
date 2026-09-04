.class public final Lcom/metamoji/network/NwWebDAVItem$DefaultImpls;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static findChildByDisplayName(Lcom/metamoji/network/NwWebDAVItem;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->access$findChildByDisplayName$jd(Lcom/metamoji/network/NwWebDAVItem;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p0

    return-object p0
.end method

.method public static findChildByUriName(Lcom/metamoji/network/NwWebDAVItem;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "uriName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->access$findChildByUriName$jd(Lcom/metamoji/network/NwWebDAVItem;Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p0

    return-object p0
.end method

.method public static findChildren(Lcom/metamoji/network/NwWebDAVItem;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/network/NwWebDAVItem;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->access$findChildren$jd(Lcom/metamoji/network/NwWebDAVItem;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getHasChildren(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/metamoji/network/NwWebDAVItem;->access$getHasChildren$jd(Lcom/metamoji/network/NwWebDAVItem;)Z

    move-result p0

    return p0
.end method

.method public static getHasDeadProperty(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-static {p0}, Lcom/metamoji/network/NwWebDAVItem;->access$getHasDeadProperty$jd(Lcom/metamoji/network/NwWebDAVItem;)Z

    move-result p0

    return p0
.end method

.method public static getHasLiveProperty(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/metamoji/network/NwWebDAVItem;->access$getHasLiveProperty$jd(Lcom/metamoji/network/NwWebDAVItem;)Z

    move-result p0

    return p0
.end method

.method public static isRoot(Lcom/metamoji/network/NwWebDAVItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/metamoji/network/NwWebDAVItem;->access$isRoot$jd(Lcom/metamoji/network/NwWebDAVItem;)Z

    move-result p0

    return p0
.end method

.method public static listChildren(Lcom/metamoji/network/NwWebDAVItem;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/network/NwWebDAVItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-static {p0}, Lcom/metamoji/network/NwWebDAVItem;->access$listChildren$jd(Lcom/metamoji/network/NwWebDAVItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
