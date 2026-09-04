.class Lcom/metamoji/ui/library/item/LibraryViewDialog$6$1;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1092
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1097
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    sget v1, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_NOTFOUND_ITEM_ERROR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 1102
    invoke-static {v0, v1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
