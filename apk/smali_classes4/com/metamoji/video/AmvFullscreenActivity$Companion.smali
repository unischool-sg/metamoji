.class public final Lcom/metamoji/video/AmvFullscreenActivity$Companion;
.super Ljava/lang/Object;
.source "AmvFullscreenActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFullscreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001&B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010#\u001a\u00020\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R%\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\u0004\u0012\u00020\u00170\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFullscreenActivity$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "KEY_SOURCE",
        "",
        "KEY_POSITION",
        "KEY_PLAYING",
        "KEY_CLIP_START",
        "KEY_CLIP_END",
        "KEY_PINP",
        "KEY_VIDEO_WIDTH",
        "KEY_VIDEO_HEIGHT",
        "INTENT_NAME",
        "ACTION_TYPE_KEY",
        "handlerName",
        "onResultListener",
        "Lcom/metamoji/lib/utils/Funcies1;",
        "Landroid/content/Intent;",
        "",
        "getOnResultListener",
        "()Lcom/metamoji/lib/utils/Funcies1;",
        "stateListener",
        "Lcom/metamoji/lib/utils/Funcies2;",
        "Lcom/metamoji/video/AmvFullscreenActivity$State;",
        "Lcom/metamoji/video/IAmvSource;",
        "getStateListener",
        "()Lcom/metamoji/lib/utils/Funcies2;",
        "currentActivityState",
        "getCurrentActivityState",
        "()Lcom/metamoji/video/AmvFullscreenActivity$State;",
        "close",
        "activityState",
        "Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;",
        "ActivityState",
        "video"
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getActivityState$cp()Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->close()V

    return-void
.end method

.method public final getCurrentActivityState()Lcom/metamoji/video/AmvFullscreenActivity$State;
    .locals 1

    .line 85
    invoke-static {}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getActivityState$cp()Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion$ActivityState;->getState()Lcom/metamoji/video/AmvFullscreenActivity$State;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 44
    invoke-static {}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final getOnResultListener()Lcom/metamoji/lib/utils/Funcies1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies1<",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getOnResultListener$cp()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object v0

    return-object v0
.end method

.method public final getStateListener()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/video/AmvFullscreenActivity$State;",
            "Lcom/metamoji/video/IAmvSource;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/metamoji/video/AmvFullscreenActivity;->access$getStateListener$cp()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v0

    return-object v0
.end method
