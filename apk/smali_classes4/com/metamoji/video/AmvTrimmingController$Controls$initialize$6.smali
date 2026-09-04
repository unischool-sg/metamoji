.class final synthetic Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$6;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AmvTrimmingController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvTrimmingController$Controls;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/MotionEvent;",
        "Lcom/metamoji/video/AmvSlider$Knob;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/video/AmvSlider;

    const-string v5, "onTrimmingAtFriend(Landroid/view/MotionEvent;Lcom/metamoji/video/AmvSlider$Knob;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "onTrimmingAtFriend"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/MotionEvent;Lcom/metamoji/video/AmvSlider$Knob;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$6;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/video/AmvSlider;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvSlider;->onTrimmingAtFriend(Landroid/view/MotionEvent;Lcom/metamoji/video/AmvSlider$Knob;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 241
    check-cast p1, Landroid/view/MotionEvent;

    check-cast p2, Lcom/metamoji/video/AmvSlider$Knob;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$6;->invoke(Landroid/view/MotionEvent;Lcom/metamoji/video/AmvSlider$Knob;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
