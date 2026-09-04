.class Lcom/metamoji/noteanytime/MainActivity$40$2;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$40;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$40;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2629
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$40$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

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

    .line 2629
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$40$2;->call()Ljava/lang/Void;

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

    .line 2633
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$40$2;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    .line 2634
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    const/4 v0, 0x0

    return-object v0
.end method
