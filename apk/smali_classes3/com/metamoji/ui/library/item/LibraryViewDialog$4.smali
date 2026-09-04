.class Lcom/metamoji/ui/library/item/LibraryViewDialog$4;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fget_sheetInfoDriveId(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fget_sheetInfoDocId(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fget_isSheetInfoDocIdNoteTemplate(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$mshowSheetInfoView(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
