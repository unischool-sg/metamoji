.class Lcom/metamoji/ui/BulkImportActivity$1;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 142
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$1;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$1;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/BulkImportActivity;->finish()V

    return-void
.end method
