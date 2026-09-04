.class public final synthetic Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/view/GestureDetector;

.field public final synthetic f$1:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/view/GestureDetector;Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;->f$0:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;->f$1:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;->f$0:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;->f$1:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->enableDrag$lambda$6(Landroid/view/GestureDetector;Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
