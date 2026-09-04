.class Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;
.super Ljava/lang/Object;
.source "CabinetBoxParticipationCodeDialog.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->handleUpdateParticipationCodeButtonTouchUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)V
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

    .line 161
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;->this$0:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;->val$dlg:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;->val$dlg:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4$1;-><init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
