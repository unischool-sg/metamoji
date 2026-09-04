.class Lcom/metamoji/ui/BulkImportActivity$6;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->report(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/BulkImportActivity;

.field final synthetic val$msg:Ljava/lang/String;


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

    .line 583
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$6;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/BulkImportActivity$6;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$6;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmReports(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$6;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$6;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmReports(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 589
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$6;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v1}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmScroller(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 591
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$6;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v1}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmScroller(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setScrollY(I)V

    return-void
.end method
