.class public final Lcom/metamoji/network/NwWebDAVRequest$Depth$Companion;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest$Depth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwWebDAVRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwWebDAVRequest.kt\ncom/metamoji/network/NwWebDAVRequest$Depth$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1281:1\n1#2:1282\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$Depth$Companion;",
        "",
        "<init>",
        "()V",
        "fromInt",
        "Lcom/metamoji/network/NwWebDAVRequest$Depth;",
        "v",
        "",
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

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$Depth$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/metamoji/network/NwWebDAVRequest$Depth;
    .locals 5

    .line 464
    invoke-static {}, Lcom/metamoji/network/NwWebDAVRequest$Depth;->values()[Lcom/metamoji/network/NwWebDAVRequest$Depth;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/metamoji/network/NwWebDAVRequest$Depth;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object p1, Lcom/metamoji/network/NwWebDAVRequest$Depth;->AllDescendants:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    return-object p1

    :cond_2
    return-object v3
.end method
