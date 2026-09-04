.class Lcom/metamoji/noteanytime/MainActivity$73;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->syncMediaUploadForLogout(ZLandroidx/fragment/app/FragmentActivity;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/metamoji/cm/CmContext;

.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

.field final synthetic val$showLogoutUI:Z

.field final synthetic val$unsentDocIds:Ljava/util/List;


# direct methods
.method constructor <init>(ZLcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5035
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/MainActivity$73;->val$showLogoutUI:Z

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$73;->val$context:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$73;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$73;->val$unsentDocIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 5038
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentListDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentListDialog;-><init>()V

    .line 5039
    sget v1, Lcom/metamoji/noteanytime/R$string;->ForBiz_Logout:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setDlgTitleResourceId(I)V

    .line 5041
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$73$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$73$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$73;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5065
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$73;->val$unsentDocIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 5067
    const-string v3, "driveId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5068
    const-string v4, "documentId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5069
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/ui/dialog/DocumentListDialog;->addPathInfoWithDriveId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5073
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMsg_Exist_Document_Containing_Unsent_Data_In_Logout_For_Audio:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setMessage(I)V

    .line 5074
    const-string v1, "DocumentListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
