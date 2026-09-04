.class public final Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;
.super Lcom/metamoji/lib/utils/FuncyListener3;
.source "AmvSlider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliderValueChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvSlider$SliderValueChangedListener$IHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/FuncyListener3<",
        "Lcom/metamoji/video/AmvSlider;",
        "Ljava/lang/Long;",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;",
        "Lcom/metamoji/lib/utils/FuncyListener3;",
        "Lcom/metamoji/video/AmvSlider;",
        "",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "",
        "<init>",
        "()V",
        "set",
        "listener",
        "Lcom/metamoji/video/AmvSlider$SliderValueChangedListener$IHandler;",
        "IHandler",
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
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/metamoji/lib/utils/FuncyListener3;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Lcom/metamoji/video/AmvSlider$SliderValueChangedListener$IHandler;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 478
    new-instance v0, Lcom/metamoji/lib/utils/Funcy3;

    new-instance v1, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener$set$1;

    invoke-direct {v1, p1}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener$set$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/Funcy3;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy3;

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->setFuncy(Lcom/metamoji/lib/utils/IFuncy3;)V

    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->reset()V

    return-void
.end method
