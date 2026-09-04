.class public final Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;
.super Ljava/lang/Object;
.source "NwWebDAVRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;",
        "",
        "<init>",
        "()V",
        "ERROR",
        "Lcom/metamoji/network/NwWebDAVPropResult;",
        "getERROR",
        "()Lcom/metamoji/network/NwWebDAVPropResult;",
        "ERROR$delegate",
        "Lkotlin/Lazy;",
        "error",
        "err",
        "Lcom/metamoji/network/NwWebDAVRequest$Result;",
        "ModeNONE",
        "",
        "ModeDIRECTORIES",
        "ModePROPERTIES",
        "ModePATCH_RESPONSE",
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

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser$Companion;-><init>()V

    return-void
.end method

.method private final error(Lcom/metamoji/network/NwWebDAVRequest$Result;)Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 1

    .line 997
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;

    check-cast p1, Lcom/metamoji/network/NwWebDAVBytesResult;

    invoke-direct {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;-><init>(Lcom/metamoji/network/NwWebDAVBytesResult;)V

    check-cast v0, Lcom/metamoji/network/NwWebDAVPropResult;

    return-object v0
.end method


# virtual methods
.method public final getERROR()Lcom/metamoji/network/NwWebDAVPropResult;
    .locals 1

    .line 992
    invoke-static {}, Lcom/metamoji/network/NwWebDAVRequest$DAVPropParser;->access$getERROR$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwWebDAVPropResult;

    return-object v0
.end method
