.class public final Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;
.super Ljava/lang/Object;
.source "UnVideoOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;",
        "getEmpty",
        "()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;",
        "app"
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;
    .locals 2

    .line 69
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method
