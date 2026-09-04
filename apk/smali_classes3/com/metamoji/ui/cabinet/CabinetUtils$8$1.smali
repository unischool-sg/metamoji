.class Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils$8;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$8;

.field final synthetic val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetUtils$8;Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;)V
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

    .line 1728
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$8;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1731
    new-instance v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/OpenUrlDialog;-><init>()V

    const/4 v1, 0x1

    .line 1732
    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    .line 1733
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;->val$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->getUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->url:Ljava/lang/String;

    .line 1734
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->setModal(Z)V

    .line 1735
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$8;

    iget-boolean v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$8;->val$isCentering:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->setCentering(Z)V

    .line 1736
    const-string v1, "openUrlDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
