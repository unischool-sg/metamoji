.class Lcom/metamoji/ui/library/item/LibraryViewDialog$7;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1273
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;->val$transparentWholeView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1275
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fget_rootView(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;->val$transparentWholeView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1276
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fput_sheetInfoDocId(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V

    .line 1277
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fput_sheetInfoDriveId(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V

    return-void
.end method
