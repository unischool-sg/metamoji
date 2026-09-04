.class Lcom/metamoji/ui/dialog/CreateFolder$3;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "CreateFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder;->onDoneInnr(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CreateFolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder;Landroid/view/View;)V
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

    .line 166
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$3;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/metamoji/sd/SdFailureBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$3;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    .line 170
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$3;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_forRename(Lcom/metamoji/ui/dialog/CreateFolder;)Z

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$3;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->renameFolder()V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->createFolder()V

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    .line 179
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$3;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/CreateFolder;->onCancel(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
