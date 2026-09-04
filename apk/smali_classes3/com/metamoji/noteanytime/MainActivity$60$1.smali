.class Lcom/metamoji/noteanytime/MainActivity$60$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$60;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$60;

.field final synthetic val$result:Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$60;Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;)V
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

    .line 4234
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$60;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->val$result:Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4237
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->val$result:Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;

    if-nez v0, :cond_0

    .line 4238
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void

    .line 4239
    :cond_0
    iget v0, v0, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;->errorCode:I

    .line 4243
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->val$result:Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;

    if-nez v0, :cond_1

    .line 4240
    iget-object v0, v1, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;->amountUsed:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$60;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$60;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->CabinetSd_AmountUsedTitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 4243
    :cond_1
    iget v0, v1, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;->errorCode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2b03

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2aff

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2b00

    if-eq v0, v1, :cond_2

    .line 4257
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_0

    .line 4248
    :cond_2
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->OperationDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_0

    .line 4254
    :cond_3
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_0

    .line 4251
    :cond_4
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_0

    .line 4245
    :cond_5
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->NetworkError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    .line 4261
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_6

    .line 4262
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$60;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$60;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    return-void

    .line 4263
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_7

    .line 4264
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$60$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$60;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$60;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    return-void

    .line 4266
    :cond_7
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void
.end method
