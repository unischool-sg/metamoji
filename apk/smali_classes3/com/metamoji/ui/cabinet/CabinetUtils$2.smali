.class Lcom/metamoji/ui/cabinet/CabinetUtils$2;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$2;->val$driveId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 689
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$2;->val$driveId:Ljava/lang/String;

    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$2$1;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$2;)V

    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$2$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$2$2;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$2;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method
