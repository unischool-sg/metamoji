.class public final Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData$Companion;
.super Ljava/lang/Object;
.source "MfDirectionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData$Companion;",
        "",
        "<init>",
        "()V",
        "MODELTYPE_MEDIAFILESSHAREDIRECTION",
        "",
        "MODELPROP_MEDIAFILESSHAREDIRECTION_TABLE",
        "isTargetDirection",
        "",
        "direction",
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    const-string v0, "mediafilessharedirection"

    invoke-static {p1, v0}, Lcom/metamoji/ns/direction/NsDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
