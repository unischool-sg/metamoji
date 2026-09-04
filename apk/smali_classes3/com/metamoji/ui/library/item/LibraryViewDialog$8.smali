.class Lcom/metamoji/ui/library/item/LibraryViewDialog$8;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field final synthetic val$transparentWholeView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1283
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;->val$transparentWholeView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1285
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fget_rootView(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;->val$transparentWholeView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1286
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fput_sheetInfoDocId(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V

    .line 1287
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fput_sheetInfoDriveId(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
