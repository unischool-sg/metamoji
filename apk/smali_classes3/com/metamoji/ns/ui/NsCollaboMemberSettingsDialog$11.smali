.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleChangeClassButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1362
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1369
    :cond_0
    const-string v0, "className"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1370
    const-string v1, "groupDicList"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1374
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Msg_Change_Class:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 1375
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1376
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
