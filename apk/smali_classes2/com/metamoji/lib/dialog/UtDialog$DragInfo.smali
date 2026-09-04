.class public final Lcom/metamoji/lib/dialog/UtDialog$DragInfo;
.super Ljava/lang/Object;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DragInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0002J\u001f\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$DragInfo;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialog;)V",
        "dragging",
        "",
        "x",
        "Lcom/metamoji/lib/dialog/UtDialog$DragParam;",
        "y",
        "setup",
        "",
        "adjustPosition",
        "xp",
        "",
        "yp",
        "(Ljava/lang/Float;Ljava/lang/Float;)V",
        "start",
        "ev",
        "Landroid/view/MotionEvent;",
        "move",
        "cancel",
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
.field private dragging:Z

.field final synthetic this$0:Lcom/metamoji/lib/dialog/UtDialog;

.field private final x:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

.field private final y:Lcom/metamoji/lib/dialog/UtDialog$DragParam;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 810
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance p1, Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    invoke-direct {p1}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->x:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    .line 813
    new-instance p1, Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    invoke-direct {p1}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->y:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    return-void
.end method

.method private final setup()V
    .locals 18

    move-object/from16 v0, p0

    .line 819
    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v3, v1

    .line 820
    iget-object v2, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->x:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v6

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getClipHorizontalOnDrag()Z

    move-result v7

    neg-float v1, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    div-float v9, v3, v8

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->setup(FFIIZFF)V

    .line 821
    iget-object v10, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->y:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v11, v1

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v12, v1

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getClipVerticalOnDrag()Z

    move-result v15

    iget-object v1, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/metamoji/lib/utils/ViewExtKt;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->setup(FFIIZFF)V

    return-void
.end method


# virtual methods
.method public final adjustPosition(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 2

    .line 828
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->setup()V

    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->x:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->clipPosition(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setX(F)V

    :cond_0
    if-eqz p2, :cond_1

    .line 833
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->y:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->clipPosition(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setY(F)V

    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 864
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->dragging:Z

    return-void
.end method

.method public final move(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->dragging:Z

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->x:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->getPosition(F)F

    move-result v0

    .line 853
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setX(F)V

    .line 854
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setCustomPositionX(Ljava/lang/Float;)V

    .line 855
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->y:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->getPosition(F)F

    move-result p1

    .line 856
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setY(F)V

    .line 857
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setCustomPositionY(Ljava/lang/Float;)V

    return-void
.end method

.method public final start(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->setup()V

    .line 842
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->x:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->start(FF)V

    .line 843
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->y:Lcom/metamoji/lib/dialog/UtDialog$DragParam;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->this$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/dialog/UtDialog$DragParam;->start(FF)V

    const/4 p1, 0x1

    .line 844
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->dragging:Z

    return-void
.end method
