.class Lcom/metamoji/ui/dialog/CreateFolder$2;
.super Lcom/metamoji/sd/SdSuccessBlock;
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

    .line 154
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$2;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

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

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$2;->call()Ljava/lang/Void;

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

    .line 157
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$2;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_forRename(Lcom/metamoji/ui/dialog/CreateFolder;)Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$2;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->renameFolder()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->createFolder()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
