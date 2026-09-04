.class public final Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;
.super Ljava/lang/Object;
.source "UtClickRepeater.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/gesture/UtClickRepeater;-><init>(Landroid/view/View;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "io/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;


# direct methods
.method constructor <init>(Lio/github/toyota32k/utils/gesture/UtClickRepeater;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->this$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->$view:Landroid/view/View;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->this$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->getStatus()Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    move-result-object v0

    sget-object v1, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->REPEATING:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->this$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    invoke-static {v0}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->access$getChronos$p(Lio/github/toyota32k/utils/gesture/UtClickRepeater;)Lio/github/toyota32k/logger/Chronos;

    move-result-object v0

    const-string v1, "Touch - Perform Repeat"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/logger/Chronos;->lap(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->$view:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 55
    :cond_1
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->$view:Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$repeat$1;->this$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    invoke-static {v2}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->access$getRepeatInterval$p(Lio/github/toyota32k/utils/gesture/UtClickRepeater;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
