.class public final Lcom/metamoji/un/video/UnVideoUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnVideoUndoPerformer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoUndoPerformer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUndoPerformer;",
        "Lcom/metamoji/nt/NtControllerUndoPerformer;",
        "<init>",
        "()V",
        "checkUndoModelVersion",
        "",
        "model",
        "Lcom/metamoji/df/model/IModel;",
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
.field public static final Companion:Lcom/metamoji/un/video/UnVideoUndoPerformer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/UnVideoUndoPerformer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnVideoUndoPerformer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUndoPerformer;->Companion:Lcom/metamoji/un/video/UnVideoUndoPerformer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 13
    const-string/jumbo v1, "video.undo"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
