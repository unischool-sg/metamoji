.class Lcom/metamoji/ui/BulkImportActivity$9;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->onBackKeyPressed()Z
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

    .line 651
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$9;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 655
    iget-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$9;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fputmCancel(Lcom/metamoji/ui/BulkImportActivity;Z)V

    .line 656
    iget-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$9;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/BulkImportActivity;->updateEachTextCancelling()V

    :cond_0
    return-void
.end method
