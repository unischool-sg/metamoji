.class Lcom/metamoji/ui/cabinet/CabinetUtils$7;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$resultList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1712
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$pageId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$resultList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1716
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$pageId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/dvm/DvmUtil;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1718
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$7;->val$resultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
