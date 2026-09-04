.class public final synthetic Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/utils/gesture/UtClickRepeater;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;->f$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;->f$0:Lio/github/toyota32k/utils/gesture/UtClickRepeater;

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lio/github/toyota32k/utils/gesture/UtClickRepeater;->attachView$lambda$0(Lio/github/toyota32k/utils/gesture/UtClickRepeater;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
