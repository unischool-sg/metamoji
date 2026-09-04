.class final Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"

# interfaces
.implements Lcom/metamoji/network/NwWebDAVItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NwDAVItemImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0082\u0008\u0018\u0000 72\u00020\u0001:\u00017BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0000H\u0002J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0000H\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\u00002\u0006\u0010\'\u001a\u00020\u0000H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010\'\u001a\u00020\u0000H\u0002J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0003J\u0015\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J]\u00100\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001J\u0013\u00101\u001a\u00020\u00052\u0008\u00102\u001a\u0004\u0018\u000103H\u00d6\u0003J\t\u00104\u001a\u000205H\u00d6\u0001J\t\u00106\u001a\u00020\u0003H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0014\u0010\n\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000fR\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u000e\u00a8\u00068"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
        "Lcom/metamoji/network/NwWebDAVItem;",
        "href",
        "",
        "isCollection",
        "",
        "displayName",
        "liveProperties",
        "",
        "deadProperties",
        "isValid",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V",
        "getHref",
        "()Ljava/lang/String;",
        "()Z",
        "getDisplayName",
        "getLiveProperties",
        "()Ljava/util/Map;",
        "getDeadProperties",
        "parentNode",
        "Ljava/lang/ref/WeakReference;",
        "getParentNode",
        "()Ljava/lang/ref/WeakReference;",
        "setParentNode",
        "(Ljava/lang/ref/WeakReference;)V",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "parent",
        "getParent",
        "()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
        "uriName",
        "getUriName",
        "isChild",
        "mayChild",
        "isChildOrDescendant",
        "findParent",
        "child",
        "addChild",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;

.field private static final INVALID:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final deadProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final displayName:Ljava/lang/String;

.field private final href:Ljava/lang/String;

.field private final isCollection:Z

.field private final isValid:Z

.field private final liveProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentNode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->Companion:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;

    .line 1118
    new-instance v2, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    sput-object v2, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->INVALID:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "href"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveProperties"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deadProperties"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    .line 1033
    iput-boolean p2, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    .line 1034
    iput-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    .line 1035
    iput-object p4, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    .line 1036
    iput-object p5, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    .line 1037
    iput-boolean p6, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    .line 1040
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1031
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public static final synthetic access$addChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)V
    .locals 0

    .line 1031
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->addChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)V

    return-void
.end method

.method public static final synthetic access$findParent(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 0

    .line 1031
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->findParent(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getINVALID$cp()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 1

    .line 1031
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->INVALID:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    return-object v0
.end method

.method public static final synthetic access$isChildOrDescendant(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z
    .locals 0

    .line 1031
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isChildOrDescendant(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z

    move-result p0

    return p0
.end method

.method private final addChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)V
    .locals 1

    .line 1089
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z

    .line 1090
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->parentNode:Ljava/lang/ref/WeakReference;

    .line 1091
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-boolean p6, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    :cond_5
    move-object p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->copy(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object p0

    return-object p0
.end method

.method private final findParent(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 2

    .line 1076
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    .line 1080
    invoke-direct {v1, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->findParent(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private final isChild(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z
    .locals 7

    .line 1047
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isChildOrDescendant(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1050
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string/jumbo v5, "substring(...)"

    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    const/16 v0, 0x2f

    invoke-static {p1, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private final isChildOrDescendant(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;)Z
    .locals 4

    .line 1063
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    .line 1069
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;"
        }
    .end annotation

    const-string v0, "href"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveProperties"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deadProperties"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    iget-boolean v3, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    iget-object v3, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    iget-object v3, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    iget-boolean p1, p1, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public findChildByDisplayName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 0

    .line 1031
    invoke-super {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildByDisplayName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p1

    return-object p1
.end method

.method public findChildByUriName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;
    .locals 0

    .line 1031
    invoke-super {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildByUriName(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p1

    return-object p1
.end method

.method public findChildren(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 0
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

    .line 1031
    invoke-super {p0, p1}, Lcom/metamoji/network/NwWebDAVItem;->findChildren(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
            ">;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDeadProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHasChildren()Z
    .locals 1

    .line 1031
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->getHasChildren()Z

    move-result v0

    return v0
.end method

.method public getHasDeadProperty()Z
    .locals 1

    .line 1031
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->getHasDeadProperty()Z

    move-result v0

    return v0
.end method

.method public getHasLiveProperty()Z
    .locals 1

    .line 1031
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->getHasLiveProperty()Z

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/metamoji/network/NwWebDAVItem;
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getParent()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwWebDAVItem;

    return-object v0
.end method

.method public getParent()Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->parentNode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParentNode()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
            ">;"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->parentNode:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getUriName()Ljava/lang/String;
    .locals 2

    .line 1044
    sget-object v0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->Companion:Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;

    invoke-virtual {p0}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;->access$uriNameFromHRef(Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCollection()Z
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 1031
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->isRoot()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    return v0
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

    .line 1031
    invoke-super {p0}, Lcom/metamoji/network/NwWebDAVItem;->listChildren()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setParentNode(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;",
            ">;)V"
        }
    .end annotation

    .line 1038
    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->parentNode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->href:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isCollection:Z

    iget-object v2, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->liveProperties:Ljava/util/Map;

    iget-object v4, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->deadProperties:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/metamoji/network/NwWebDAVRequest$NwDAVItemImpl;->isValid:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NwDAVItemImpl(href="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", isCollection="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liveProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deadProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
