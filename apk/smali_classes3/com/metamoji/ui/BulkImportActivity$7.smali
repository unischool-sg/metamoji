.class Lcom/metamoji/ui/BulkImportActivity$7;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/BulkImportActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$7;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$7;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmBack(Lcom/metamoji/ui/BulkImportActivity;)Lcom/metamoji/ui/common/UiButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$7;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/BulkImportActivity;->updateEachTextDone()V

    return-void
.end method
