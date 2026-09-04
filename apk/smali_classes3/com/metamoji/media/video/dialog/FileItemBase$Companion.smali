.class public final Lcom/metamoji/media/video/dialog/FileItemBase$Companion;
.super Ljava/lang/Object;
.source "MfFileListView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/FileItemBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/FileItemBase$Companion;",
        "",
        "<init>",
        "()V",
        "fitter",
        "Lcom/metamoji/video/AmvFitter;",
        "getFitter",
        "()Lcom/metamoji/video/AmvFitter;",
        "setFitter",
        "(Lcom/metamoji/video/AmvFitter;)V",
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

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/FileItemBase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFitter()Lcom/metamoji/video/AmvFitter;
    .locals 1

    .line 675
    sget-object v0, Lcom/metamoji/media/video/dialog/FileItemBase;->fitter:Lcom/metamoji/video/AmvFitter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fitter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setFitter(Lcom/metamoji/video/AmvFitter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    sput-object p1, Lcom/metamoji/media/video/dialog/FileItemBase;->fitter:Lcom/metamoji/video/AmvFitter;

    return-void
.end method
