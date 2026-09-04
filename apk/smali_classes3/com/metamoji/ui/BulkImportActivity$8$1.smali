.class Lcom/metamoji/ui/BulkImportActivity$8$1;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity$8;->setProgressText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/BulkImportActivity$8;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity$8;Ljava/lang/String;)V
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

    .line 623
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$8$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$8;

    iput-object p2, p0, Lcom/metamoji/ui/BulkImportActivity$8$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$8$1;->this$1:Lcom/metamoji/ui/BulkImportActivity$8;

    iget-object v0, v0, Lcom/metamoji/ui/BulkImportActivity$8;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->progress_text:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/BulkImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 627
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$8$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
