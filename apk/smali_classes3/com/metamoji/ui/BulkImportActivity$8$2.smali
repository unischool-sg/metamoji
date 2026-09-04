.class Lcom/metamoji/ui/BulkImportActivity$8$2;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity$8;->progress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/BulkImportActivity$8;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity$8;F)V
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

    .line 634
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$8$2;->this$1:Lcom/metamoji/ui/BulkImportActivity$8;

    iput p2, p0, Lcom/metamoji/ui/BulkImportActivity$8$2;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$8$2;->this$1:Lcom/metamoji/ui/BulkImportActivity$8;

    iget-object v0, v0, Lcom/metamoji/ui/BulkImportActivity$8;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmEachBar(Lcom/metamoji/ui/BulkImportActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/metamoji/ui/BulkImportActivity$8$2;->val$progress:F

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
