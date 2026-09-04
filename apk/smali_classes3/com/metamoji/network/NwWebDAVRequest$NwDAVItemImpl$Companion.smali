.class public final Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwWebDAVRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1281:1\n464#2,6:1282\n*S KotlinDebug\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion\n*L\n1100#1:1282,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J8\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bH\u0002JF\u0010\u0010\u001a\u00020\t2\u001e\u0010\u0011\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b0\u000b2\u001e\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b0\u000bR\u0011\u0010\r\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;",
        "",
        "<init>",
        "()V",
        "uriNameFromHRef",
        "",
        "href",
        "displayNameFromHRef",
        "createNode",
        "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
        "lp",
        "",
        "dp",
        "INVALID",
        "getINVALID",
        "()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
        "createTree",
        "lps",
        "dps",
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
.method private constructor <init>()V
    .locals 0

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$uriNameFromHRef(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1094
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->uriNameFromHRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final createNode(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;"
        }
    .end annotation

    .line 1113
    const-string v0, "displayname"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->displayNameFromHRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 1114
    const-string v0, "collection"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 1115
    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final displayNameFromHRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1106
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->uriNameFromHRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object p1
.end method

.method private final uriNameFromHRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1096
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1097
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 1282
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 1283
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 1285
    check-cast v0, Ljava/lang/String;

    .line 1100
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 1287
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "List contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final createTree(Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;"
        }
    .end annotation

    const-string v0, "lps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSortedSet(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1124
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1125
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 1127
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4, v5}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->createNode(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 1128
    invoke-static {v3, v2}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->access$isChildOrDescendant(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1132
    :cond_2
    invoke-static {v2, v3}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->access$findParent(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1134
    invoke-static {v4, v3}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->access$addChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)V

    goto :goto_0

    .line 1136
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 1141
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->getINVALID()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object p1

    return-object p1

    .line 1144
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 1145
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 1146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1147
    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1148
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    .line 1149
    invoke-static {v2, v0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->access$findParent(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1151
    invoke-static {v3, v0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->access$addChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)V

    .line 1152
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1155
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, p1, :cond_6

    :cond_9
    return-object v2
.end method

.method public final getINVALID()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 1

    .line 1118
    invoke-static {}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->access$getINVALID$cp()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v0

    return-object v0
.end method
