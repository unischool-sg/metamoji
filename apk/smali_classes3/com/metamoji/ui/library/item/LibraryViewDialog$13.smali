.class Lcom/metamoji/ui/library/item/LibraryViewDialog$13;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCompletedMessage(Lcom/metamoji/lb/LbConstants$DownloadMode;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field final synthetic val$fMessage:Ljava/lang/String;

.field final synthetic val$fTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1964
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;->val$fMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;->val$fTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1967
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;->val$fMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;->val$fTitle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
