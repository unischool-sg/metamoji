.class public final Lcom/metamoji/media/video/compat/MfMediaFiles;
.super Ljava/lang/Object;
.source "MfMediaFiles.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/compat/MfMediaFiles$Companion;,
        Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfMediaFiles;",
        "",
        "<init>",
        "()V",
        "Companion",
        "ModelDef",
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
.field public static final Companion:Lcom/metamoji/media/video/compat/MfMediaFiles$Companion;

.field public static final MODELTYPE:Ljava/lang/String; = "mediafiles"

.field private static final VERSION_1:I = 0x1

.field public static final VERSION_LATEST:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/compat/MfMediaFiles$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/compat/MfMediaFiles$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/compat/MfMediaFiles;->Companion:Lcom/metamoji/media/video/compat/MfMediaFiles$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
