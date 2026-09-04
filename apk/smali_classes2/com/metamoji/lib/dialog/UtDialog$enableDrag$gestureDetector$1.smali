.class public final Lcom/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/UtDialog;->enableDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onDoubleTap",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    .line 889
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {p1}, Lcom/metamoji/lib/dialog/UtDialog;->access$resetDialogPosition(Lcom/metamoji/lib/dialog/UtDialog;)V

    .line 893
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {p1}, Lcom/metamoji/lib/dialog/UtDialog;->access$getDragInfo(Lcom/metamoji/lib/dialog/UtDialog;)Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->cancel()V

    const/4 p1, 0x1

    return p1
.end method
