.class Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;
.super Ljava/lang/Object;
.source "CabinetInputBoxParticipationCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->executeJoinApi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;)V
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

    .line 254
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->_driveId:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    iget v1, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->errorCode:I

    const/16 v2, 0xd3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12e

    const-string v3, "%s"

    const-string v4, "%@"

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    goto :goto_0

    .line 275
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_ALREADY_PARTICIPATED_CLASS_BOX_ERROR_MESSAGE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->errorMessage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v1, v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$mshowErrorMessage(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_DENY_TO_PARTICIPATION_CODE_ERROR_MESSAGE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->val$result:Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->errorMessage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v1, v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$mshowErrorMessage(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_PARTICIPATION_CODE_ERROR_MESSAGE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v1, v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$mshowErrorMessage(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Ljava/lang/String;)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$7;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$mresetParticipationCode(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    return-void
.end method
