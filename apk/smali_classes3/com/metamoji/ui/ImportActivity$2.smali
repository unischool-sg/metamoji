.class Lcom/metamoji/ui/ImportActivity$2;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$2;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lcom/metamoji/ui/ImportActivity$2;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-static {p1}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$fget_progressUI(Lcom/metamoji/ui/ImportActivity;)Lcom/metamoji/ui/INtProgressUIEx;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ui/INtProgressUIEx;->cancel()V

    return-void
.end method
