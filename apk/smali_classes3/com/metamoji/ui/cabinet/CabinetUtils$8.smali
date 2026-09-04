.class Lcom/metamoji/ui/cabinet/CabinetUtils$8;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isCentering:Z

.field final synthetic val$resultList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1721
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8;->val$resultList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8;->val$isCentering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 2

    .line 1724
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8;->val$resultList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1725
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8;->val$resultList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    .line 1726
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->succeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1728
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils$8$1;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$8;Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 1740
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    :cond_1
    return-void
.end method
