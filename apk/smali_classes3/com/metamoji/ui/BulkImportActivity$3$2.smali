.class Lcom/metamoji/ui/BulkImportActivity$3$2;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "BulkImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/BulkImportActivity$3;

.field final synthetic val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity$3;Lcom/metamoji/cm/mutable/MutableBoolean;)V
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

    .line 472
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$3$2;->this$1:Lcom/metamoji/ui/BulkImportActivity$3;

    iput-object p2, p0, Lcom/metamoji/ui/BulkImportActivity$3$2;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

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

    .line 472
    invoke-virtual {p0}, Lcom/metamoji/ui/BulkImportActivity$3$2;->call()Ljava/lang/Void;

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

    .line 475
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$3$2;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    const/4 v0, 0x0

    return-object v0
.end method
