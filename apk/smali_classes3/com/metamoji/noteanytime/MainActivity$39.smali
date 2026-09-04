.class Lcom/metamoji/noteanytime/MainActivity$39;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->copyNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/mutable/MutableBoolean;)V
    .locals 0

    .line 2592
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$39;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

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

    .line 2592
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$39;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2595
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$39;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    .line 2596
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$39;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    const/4 v0, 0x0

    return-object v0
.end method
