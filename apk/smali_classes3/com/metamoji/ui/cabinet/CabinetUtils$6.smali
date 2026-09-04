.class Lcom/metamoji/ui/cabinet/CabinetUtils$6;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->setDriveHidden(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bHidden:Z

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1631
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$6;->val$driveId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$6;->val$bHidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1634
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;-><init>()V

    .line 1635
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1637
    const-string v3, "id"

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$6;->val$driveId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    iget-boolean v3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$6;->val$bHidden:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hidden"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;->entryList:Ljava/util/ArrayList;

    .line 1642
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;

    return-void
.end method
