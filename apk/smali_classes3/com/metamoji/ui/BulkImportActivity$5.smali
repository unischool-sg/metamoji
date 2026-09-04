.class Lcom/metamoji/ui/BulkImportActivity$5;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->updateTotalText(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/BulkImportActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity;Ljava/lang/String;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 564
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$5;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/BulkImportActivity$5;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$5;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmTotalMessage(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$5;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
