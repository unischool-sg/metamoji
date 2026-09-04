.class Lcom/metamoji/ui/dialog/CreateFolder$5;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "CreateFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder;->createFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CreateFolder;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$5;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

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

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$5;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    const/4 v0, 0x0

    return-object v0
.end method
