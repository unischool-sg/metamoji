.class public final Lcom/metamoji/li/driver/NullResponse;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "NullResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/driver/NullResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/metamoji/li/driver/NullResponse;",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "code",
        "",
        "<init>",
        "(I)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/li/driver/NullResponse$Companion;

.field private static final instance:Lcom/metamoji/li/driver/NullResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/metamoji/li/driver/NullResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/NullResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/driver/NullResponse;->Companion:Lcom/metamoji/li/driver/NullResponse$Companion;

    .line 15
    new-instance v0, Lcom/metamoji/li/driver/NullResponse;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/li/driver/NullResponse;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/driver/NullResponse;->instance:Lcom/metamoji/li/driver/NullResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/li/driver/NullResponse;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    .line 11
    iput p1, p0, Lcom/metamoji/li/driver/NullResponse;->errorCode:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/metamoji/li/driver/NullResponse;->isUnderMaintenance:Z

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x64

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/li/driver/NullResponse;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/metamoji/li/driver/NullResponse;
    .locals 1

    .line 9
    sget-object v0, Lcom/metamoji/li/driver/NullResponse;->instance:Lcom/metamoji/li/driver/NullResponse;

    return-object v0
.end method
