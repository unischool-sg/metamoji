.class public final Lcom/metamoji/media/video/network/VfCloud;
.super Ljava/lang/Object;
.source "VfCloud.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/VfCloud$Companion;,
        Lcom/metamoji/media/video/network/VfCloud$Connectivity;,
        Lcom/metamoji/media/video/network/VfCloud$IDMapper;,
        Lcom/metamoji/media/video/network/VfCloud$UploadResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 \u00062\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/VfCloud;",
        "",
        "<init>",
        "()V",
        "UploadResult",
        "Connectivity",
        "Companion",
        "IDMapper",
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
.field public static final Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/network/VfCloud$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
